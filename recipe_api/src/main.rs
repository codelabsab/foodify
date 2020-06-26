use std::{convert::Infallible, net::SocketAddr};
use hyper::{Body, Request, Response, Server};
use hyper::service::{make_service_fn, service_fn};

mod setup_server;
mod query;

use setup_server::setup_server;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;

async fn handle(_: Request<Body>) -> Result<Response<Body>, Infallible> {
    Ok(Response::new("Hello, World!".into()))
}

#[tokio::main]
async fn main() -> Result<(), ()> {
    let logger = TerminalLoggerBuilder::default().build().expect("Failed to create logger");

    info!(logger, "Starting recipe API ⭐️");

    setup_server().await;

    Ok(())
}
