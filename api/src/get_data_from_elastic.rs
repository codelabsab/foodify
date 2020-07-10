use uuid::Uuid;
use async_graphql::FieldResult;
use recipe_shared::RecipeState;
use serde_json::Value;
use serde::de::DeserializeOwned;
use async_graphql::connection::Connection;

pub async fn get_data_from_elastic<T: DeserializeOwned>(elastic_base_url: &str, index: &str, aggregate_id: Uuid) -> FieldResult<T> {
    let result = reqwest::Client::new()
        .get(&format!("{}/{}/_doc/{}", elastic_base_url, index, aggregate_id))
        .send()
        .await?;
    if result.status().is_success() {
        let json: Value = result.json().await?;
        let data: T = serde_json::from_value(json.get("_source").unwrap().clone())?;
        Ok(data)
    } else {
        let status = result.status();
        let result_message = result.text_with_charset("utf-8").await?;
        Err(format_err!("Failed to insert document to elastic, returned status code was {}, and response was: {:#?}", status, result_message).into())
    }
}

pub async fn get_data_list_from_elastic<T: DeserializeOwned>(
    elastic_base_url: &str,
    index: &str,
    search: Option<String>,
    after: Option<String>,
    before: Option<String>,
    first: Option<usize>,
    last: Option<usize>
) -> FieldResult<(bool, bool, Vec<(Uuid, T)>)> {
    let search_payload = match search {
        Some(val) => {
            json!({
                    "query": {
                        "fuzzy" : {
                            "title": {
                                "value": val
                            }
                        }
                    },
                    "sort": [
                        {"title.keyword": "asc"}
                    ]
                })
        },
        None => {
            json!({
                    "query": {
                        "match_all": {}
                    },
                    "sort": [
                        {"title.keyword": "asc"}
                    ]
                })
        }
    };

    let number_of_items_to_return = first.unwrap_or(last.unwrap_or(50));

    let result = reqwest::Client::new()
        .post(&format!("{}/{}/_search?size={}", elastic_base_url, index, number_of_items_to_return + 1))
        .json(&search_payload)
        .send()
        .await?;

    if result.status().is_success() {
        let json: Value = result.json().await?;
        let mut data = vec![];
        let total_docs = json.get("hits").unwrap().get("total").unwrap().get("value").unwrap().as_u64().unwrap();

        for value in json.get("hits").unwrap().get("hits").unwrap().as_array().unwrap() {
            let doc = serde_json::from_value(value.get("_source").unwrap().clone())?;
            let id = serde_json::from_value(value.get("_id").unwrap().clone())?;
            data.push((id, doc))
        }

        let has_next = data.len() >= number_of_items_to_return + 1;
        let has_prev = after.is_some();

        if has_next {
            data.truncate(number_of_items_to_return);
        }

        Ok((has_next, has_prev, data))
    } else {
        let status = result.status();
        let result_message = result.text_with_charset("utf-8").await?;
        Err(format_err!("Failed to insert document to elastic, returned status code was {}, and response was: {:#?}", status, result_message).into())
    }
}


pub async fn get_recipe_from_elastic(elastic_base_url: &str, aggregate_id: Uuid) -> FieldResult<RecipeState> {
    get_data_from_elastic(elastic_base_url, recipe_shared::SERVICE_NAME, aggregate_id).await
}


pub async fn get_recipe_list_from_elastic(
    elastic_base_url: &str,
    search: Option<String>,
    after: Option<String>,
    before: Option<String>,
    first: Option<usize>,
    last: Option<usize>
) -> FieldResult<(bool, bool, Vec<(Uuid, RecipeState)>)> {
    get_data_list_from_elastic(
        elastic_base_url,
        recipe_shared::SERVICE_NAME,
        search,
        after,
        before,
        first,
        last
    ).await
}
