
#[macro_use]
extern crate slog;

mod print_banner;
mod server;

use crate::server::setup_server;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use crate::print_banner::print_banner;

#[tokio::main]
async fn main() -> Result<(), ()> {
    let logger = TerminalLoggerBuilder::default()
        .build()
        .expect("Failed to create logger");

    print_banner();

    info!(logger, "Starting Recipe API ⭐️");

    setup_server(&logger).await;

    Ok(())
}
