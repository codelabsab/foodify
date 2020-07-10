use uuid::Uuid;
use crate::resolver::Recipe;
use async_graphql::FieldResult;
use crate::get_data_from_elastic::{get_recipe_from_elastic, get_recipe_list_from_elastic};
use async_graphql::connection::{Connection, query, Edge};

pub struct Query {
    elastic_base_url: String
}

impl Query {
    pub fn new(elastic_base_url: &str) -> Self {
        Self {
            elastic_base_url: elastic_base_url.to_string()
        }
    }
}

#[Object]
impl Query {
    async fn api_version(&self) -> &str {
        "1.2.3"
    }

    async fn recipe(&self, id: Uuid) -> FieldResult<Recipe> {
        let recipe_state = get_recipe_from_elastic(&self.elastic_base_url, id).await?;

        Ok(Recipe::new(
            id,
            recipe_state.title,
            recipe_state.description,
            recipe_state.brief_description,
            recipe_state.created_date,
        ))
    }

    async fn recipes(
        &self,
        search: Option<String>,
        after: Option<String>,
        before: Option<String>,
        first: Option<i32>,
        last: Option<i32>
    ) -> FieldResult<Connection<String, Recipe>> {
        query(after, before, first, last, |after, before, first, last| async move {


            let (has_next, has_prev, list) = get_recipe_list_from_elastic(
                &self.elastic_base_url,
                search,
                after,
                before,
                first,
                last
            ).await?;
            let mut connection = Connection::new(has_prev, has_next);
            connection.append(list.into_iter().map(|(id, recipe_state)| {
                let recipe = Recipe::new(
                    id,
                    recipe_state.title,
                    recipe_state.description,
                    recipe_state.brief_description,
                    recipe_state.created_date,
                );
                Edge::new(id.to_string(), recipe)
            }));

            Ok(connection)
        }).await
    }
}
