#[macro_use]
extern crate slog;

use tonic::transport::{Server as TonicServer};
use crate::server::Server;
use crate::recipe::recipe_server::{RecipeServer};
use eventific::{EventificBuilder, Eventific};
use eventific::EventificError;
use recipe_shared::{RecipeEventData};
use recipe_shared::state_builder;
use recipe_shared::RecipeState;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use eventific_postgres::PostgresStore;
use futures::stream::TryStreamExt;
use slog::Logger;
use failure::Error;
use std::net::SocketAddr;

mod server;
mod recipe;


#[tokio::main]
async fn main() -> Result<(), Error> {

    let logger = TerminalLoggerBuilder::default().build().unwrap();

    let eventific = setup_eventific(&logger).await?;

    let addr: SocketAddr = "0.0.0.0:4071".parse()?;
    let server = Server::new(&logger, eventific);

    info!(logger, "Starting grpc server"; "address" => addr.to_string());

    TonicServer::builder()
        .add_service(RecipeServer::new(server))
        .serve(addr)
        .await?;

    Ok(())
}


async fn setup_eventific(logger: &Logger) -> Result<Eventific<RecipeState, RecipeEventData, PostgresStore<RecipeEventData>>, Error> {
    let store = PostgresStore::<RecipeEventData>::new("postgresql://user:password@postgres-postgresql:5432/postgres");

    Ok(
        EventificBuilder::new()
            .store(store)
            .logger(&logger)
            .web_socket("0.0.0.0")
            .service_name("recipe")
            .state_builder(state_builder)
            .build()
            .await?
    )
}
