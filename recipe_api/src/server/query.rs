use uuid::Uuid;
use crate::server::recipe::Recipe;

const VERSION: &'static str = env!("CARGO_PKG_VERSION");

pub struct Query;

#[juniper::graphql_object]
impl Query {
    fn api_version(&self) -> &str {
        VERSION
    }

    #[graphql(description = "A single recipe", arguments(id(description = "The id of the recipe")))]
    fn recipe(&self, id: Uuid) -> Recipe {
        Recipe::default()
    }
}