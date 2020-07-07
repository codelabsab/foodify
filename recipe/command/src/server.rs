use tonic::{Request, Response, Status};

use crate::recipe::recipe_server::{Recipe};
use crate::recipe::{CreateRecipeReply, CreateRecipeRequest};
use eventific::Eventific;
use eventific_postgres::PostgresStore;
use slog::Logger;
use recipe_shared::{RecipeEventData};
use recipe_shared::RecipeState;
use uuid::Uuid;
use failure::_core::str::FromStr;


pub struct Server {
    eventific: Eventific<RecipeState, RecipeEventData, PostgresStore<RecipeEventData>>,
    logger: Logger
}

impl Server {

    pub fn new(logger: &Logger, eventific: Eventific<RecipeState, RecipeEventData, PostgresStore<RecipeEventData>>) -> Self {
        Self {
            logger: logger.clone(),
            eventific
        }
    }
}

#[tonic::async_trait]
impl Recipe for Server {
    async fn create_recipe(
        &self,
        request: Request<CreateRecipeRequest>,
    ) -> Result<Response<CreateRecipeReply>, Status> {
        info!(self.logger, "Got a request: {:?}", request);

        let data = request.get_ref();

        let aggregate_id = Uuid::from_str(&data.aggregate_id)
            .map_err(|_| Status::invalid_argument("Aggregate Id is invalid"))?;

        self.eventific.create_aggregate(
            Some(&self.logger),
            aggregate_id,
            vec![RecipeEventData::Created { owner_id: Uuid::nil(), title: "TITLE".to_string() }],
            None
        )
            .await
            .map_err(|_| Status::internal("Failed to create recipe"))?;

        let reply = CreateRecipeReply {
            success: true,
        };

        Ok(Response::new(reply))
    }
}
