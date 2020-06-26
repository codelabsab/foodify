
#[macro_use]
extern crate slog;

mod print_banner;
mod server;

use crate::server::setup_server;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use crate::print_banner::print_banner;
use std::env;
use std::net::SocketAddr;
use std::str::FromStr;

#[tokio::main]
async fn main() -> Result<(), ()> {
    let logger = TerminalLoggerBuilder::default()
        .build()
        .expect("Failed to create logger");

    print_banner();

    info!(logger, "Starting Recipe API ⭐️");

    let address = if let Ok(var) = env::var("ADDRESS") {
        SocketAddr::from_str(&var).expect("env var ADDRESS must contain a valid ip4 address")
    } else {
        ([127, 0, 0, 1], 3000).into()
    };

    setup_server(&logger, address).await;

    Ok(())
}
