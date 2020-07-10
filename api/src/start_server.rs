use slog::Logger;
use failure::Error;
use async_graphql::{Schema, EmptySubscription, QueryBuilder};
use warp::{Filter, Reply, Rejection};
use warp::http::Response;
use async_graphql_warp::{GQLResponseStream, BadRequest};
use std::convert::Infallible;
use async_graphql::http::GraphQLPlaygroundConfig;
use crate::query::Query;
use http::StatusCode;
use async_graphql::http::playground_source;
use crate::mutation::Mutation;
use std::env;

pub async fn start_server(logger: &Logger) -> Result<(), Error> {
    let mutation = Mutation::new(logger).await?;

    let elastic_search_string = env::var("ELASTIC_SEARCH_URI").expect("env ELASTIC_SEARCH_URI must be set");
    let schema = Schema::build(Query::new(&elastic_search_string), mutation, EmptySubscription).finish();

    let graphql_post = warp::path("api")
        .and(async_graphql_warp::graphql(schema))
        .and_then(|(schema, builder): (_, QueryBuilder)| async move {
            let resp = builder.execute_stream(&schema).await;
            let stream: GQLResponseStream = resp.into();
            Ok::<_, Infallible>(stream.into_response())
        });

    let graphql_playground = warp::path("api").and(warp::get()).map(|| {
        Response::builder()
            .header("content-type", "text/html")
            .body(playground_source(GraphQLPlaygroundConfig::new("/api")))
    });

    let cors = warp::cors()
        .allow_credentials(true)
        .allow_any_origin()
        .allow_headers(vec!["authorization", "content-type"])
        .allow_methods(vec!["GET", "POST", "PUT", "DELETE"]);

    let routes = graphql_playground
        .or(graphql_post)
        .recover(|err: Rejection| async move {
            if let Some(BadRequest(err)) = err.find() {
                return Ok::<_, Infallible>(warp::reply::with_status(
                    err.to_string(),
                    StatusCode::BAD_REQUEST,
                ));
            }

            Ok(warp::reply::with_status(
                "INTERNAL_SERVER_ERROR".to_string(),
                StatusCode::INTERNAL_SERVER_ERROR,
            ))
        })
        .with(cors);

    warp::serve(routes).run(([0, 0, 0, 0], 9000)).await;

    Ok(())
}
