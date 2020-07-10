
#[macro_use]
extern crate failure;

#[macro_use]
extern crate slog;

use eventific::EventificBuilder;
use recipe_shared::{RecipeEventData, SERVICE_NAME, RecipeState};
use recipe_shared::state_builder;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use eventific_postgres::PostgresStore;
use eventific_kafka::KafkaListener;
use futures::stream::TryStreamExt;
use std::env;
use eventific::aggregate::Aggregate;
use failure::Error;

#[tokio::main]
async fn main() -> Result<(), Error> {
    let logger = TerminalLoggerBuilder::default().build().unwrap();

    let postgres_connection_string = env::var("POSTGRES_URI").expect("env POSTGRES_URI must be set");
    let store = PostgresStore::<RecipeEventData>::new(&postgres_connection_string);

    let kafka_connection_string = env::var("KAFKA_URI").expect("env KAFKA_URI must be set");
    let kafka_listener = KafkaListener::new(&kafka_connection_string);

    let eventific = EventificBuilder::new()
        .store(store)
        .logger(&logger)
        .listener(kafka_listener)
        .web_socket("0.0.0.0")
        .service_name(SERVICE_NAME)
        .state_builder(state_builder)
        .build()
        .await?;

    let stream = eventific.updated_aggregates(&Some(&logger)).await?;

    let elastic_search_string = env::var("ELASTIC_SEARCH_URI").expect("env ELASTIC_SEARCH_URI must be set");
    stream
        .map_err(|err| Error::from(err))
        .try_for_each_concurrent(100, |aggregate| {
            let base_string = elastic_search_string.to_string();
            let logger = logger.clone();
            async move {
                post_aggregate_to_elastic(&base_string, SERVICE_NAME, aggregate).await?;
                info!(logger, "Successfully inserted view into elastic");
                Ok(())
            }
        }).await?;

    Ok(())
}

async fn post_aggregate_to_elastic(elastic_base_url: &str, index: &str, aggregate: Aggregate<RecipeState>) -> Result<(), Error> {
    let payload = serde_json::to_value(aggregate.state)?;

    let result = reqwest::Client::new()
        .put(&format!("{}/{}/_doc/{}?version={}&version_type=external", elastic_base_url, index, aggregate.aggregate_id, aggregate.version))
        .json(&payload)
        .send()
        .await?;

    if result.status().is_success() {
        Ok(())
    } else {
        let status = result.status();
        let result_message = result.text_with_charset("utf-8").await?;
        Err(format_err!("Failed to insert document to elastic, returned status code was {}, and response was: {:#?}", status, result_message))
    }

}
