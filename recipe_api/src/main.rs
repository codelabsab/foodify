
#[macro_use]
extern crate slog;

mod setup_server;
mod query;
mod recipe;
mod print_banner;

use setup_server::setup_server;
use sloggers::terminal::TerminalLoggerBuilder;
use sloggers::Build;
use print_banner::print_banner;

#[tokio::main]
async fn main() -> Result<(), ()> {
    let logger = TerminalLoggerBuilder::default()
        .build()
        .expect("Failed to create logger");

    print_banner();

    info!(logger, "Starting recipe API ⭐️");

    setup_server(&logger).await;

    Ok(())
}
