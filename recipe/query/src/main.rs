
use eventific::EventificBuilder;
use eventific::EventificError;
use recipe_shared::{RecipeEventData};
use recipe_shared::state_builder;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use eventific_postgres::PostgresStore;
use futures::stream::TryStreamExt;

#[tokio::main]
async fn main() -> Result<(), EventificError<RecipeEventData>> {
    let logger = TerminalLoggerBuilder::default().build().unwrap();

    let store = PostgresStore::<RecipeEventData>::new("postgresql://user:password@postgres-postgresql:5432/postgres");

    let eventific = EventificBuilder::new()
        .store(store)
        .logger(&logger)
        .web_socket("0.0.0.0")
        .service_name("recipe")
        .state_builder(state_builder)
        .build()
        .await?;

    let stream = eventific.updated_aggregates(&Some(&logger)).await?;

    stream.try_for_each_concurrent(100, |_aggregate| async move {
        println!("Hello World");
        Ok(())
    }).await?;

    Ok(())
}
