use crate::input::CreateRecipe;
use crate::service::recipe::recipe_client::RecipeClient;
use crate::service::recipe::CreateRecipeRequest;
use failure::Error;
use tonic::transport::{Channel, Endpoint};
use async_graphql::FieldResult;
use slog::Logger;

pub struct Mutation {
    channel: Channel,
    logger: Logger
}

impl Mutation {

    pub async fn new(logger: &Logger) -> Result<Self, Error> {

        info!(logger, "Establishing connection with Recipe Command Service");
        let channel = Endpoint::from_static("http://recipe-command:4071")
            .connect()
            .await?;

        Ok(
            Self {
                channel,
                logger: logger.clone()
            }
        )
    }
}

#[Object]
impl Mutation {

    async fn create_recipe(&self, recipe: CreateRecipe) -> FieldResult<bool> {
        let mut client = RecipeClient::new(self.channel.clone());

        let input = CreateRecipeRequest {
            aggregate_id: recipe.id.to_string()
        };

        let _result = client.create_recipe(input).await?;

        Ok(true)
    }
}
