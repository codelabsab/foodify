#[macro_use]
extern crate slog;
#[macro_use]
extern crate async_graphql;


use sloggers::terminal::TerminalLoggerBuilder;
use failure::Error;
use sloggers::Build;
use start_server::start_server;

mod start_server;
mod query;
mod mutation;
mod input;
mod service;



#[tokio::main]
async fn main() -> Result<(), Error> {
    let logger = TerminalLoggerBuilder::default().build().unwrap();

    info!(logger, "Starting Foodify API Service 💃");

    start_server(&logger).await?;

    Ok(())
}
