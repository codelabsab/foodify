use hyper::{
    service::{make_service_fn, service_fn},
    Body, Method, Response, Server, StatusCode,
};
use juniper::{
    EmptyMutation, EmptySubscription, RootNode,
};
use std::sync::Arc;
use crate::server::query::Query;
use slog::Logger;
use uuid::Uuid;


pub async fn setup_server(logger: &Logger) {
    info!(logger, "Setting up server");
    let addr = ([127, 0, 0, 1], 3000).into();

    let root_node = Arc::new(RootNode::new(
        Query,
        EmptyMutation::<()>::new(),
        EmptySubscription::<()>::new(),
    ));

    let new_service = make_service_fn(move |_| {
        let logger = logger.clone();
        let root_node = root_node.clone();

        async move {
            let logger = logger.clone();
            Ok::<_, hyper::Error>(service_fn(move |req| {
                let root_node = root_node.clone();
                let ctx = Arc::new(());
                let logger = logger.new(o!("request_id" => Uuid::new_v4().to_string()));

                info!(logger, "Received request"; "method" => req.method().to_string(), "path" => req.uri().path().to_string());

                async move {
                    match (req.method(), req.uri().path()) {
                        (&Method::GET, "/") => juniper_hyper::playground("/graphql", None).await,
                        (&Method::GET, "/graphql") | (&Method::POST, "/graphql") => {
                            juniper_hyper::graphql(root_node, ctx, req).await
                        }
                        _ => {
                            let mut response = Response::new(Body::empty());
                            *response.status_mut() = StatusCode::NOT_FOUND;
                            Ok(response)
                        }
                    }
                }
            }))
        }
    });

    let server = Server::bind(&addr)
        .serve(new_service)
        .with_graceful_shutdown(shutdown_signal(&logger));

    info!(logger, "Server started! 🚀"; "address" => format!("http://{}", addr));

    if let Err(e) = server.await {
        eprintln!("server error: {}", e)
    }
}

async fn shutdown_signal(logger: &Logger) {
    tokio::signal::ctrl_c()
        .await
        .expect("failed to install CTRL+C signal handler");
    info!(logger, "Shutting down 👋")
}