use crate::input::{CreateRecipe, SetDescription, SetBriefDescription};
use crate::service::recipe::recipe_client::RecipeClient;
use crate::service::recipe::CreateRecipeRequest;
use crate::service::recipe::SetDescriptionRequest;
use crate::service::recipe::SetBriefDescriptionRequest;
use crate::service::recipe::MetaInfo;
use failure::Error;
use tonic::transport::{Channel, Endpoint};
use async_graphql::FieldResult;
use slog::Logger;
use uuid::Uuid;

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

    fn get_meta_info(&self) -> MetaInfo {
        MetaInfo {
            user_id: Uuid::nil().to_string()
        }
    }
}

#[Object]
impl Mutation {

    async fn create_recipe(&self, recipe: CreateRecipe) -> FieldResult<bool> {
        let mut client = RecipeClient::new(self.channel.clone());

        let input = CreateRecipeRequest {
            info: Some(self.get_meta_info()),
            aggregate_id: recipe.id.to_string(),
            title: recipe.title
        };

        let _result = client.create_recipe(input).await?;

        Ok(true)
    }

    async fn set_description(&self, recipe: SetDescription) -> FieldResult<bool> {
        let mut client = RecipeClient::new(self.channel.clone());

        let input = SetDescriptionRequest {
            info: Some(self.get_meta_info()),
            aggregate_id: recipe.id.to_string(),
            description: recipe.description
        };

        let _result = client.set_description(input).await?;

        Ok(true)
    }

    async fn set_brief_description(&self, recipe: SetBriefDescription) -> FieldResult<bool> {
        let mut client = RecipeClient::new(self.channel.clone());

        let input = SetBriefDescriptionRequest {
            info: Some(self.get_meta_info()),
            aggregate_id: recipe.id.to_string(),
            description: recipe.description
        };

        let _result = client.set_brief_description(input).await?;

        Ok(true)
    }
}
