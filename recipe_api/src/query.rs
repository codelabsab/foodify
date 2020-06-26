use uuid::Uuid;
use crate::recipe::Recipe;

const VERSION: &'static str = env!("CARGO_PKG_VERSION");

pub struct Query;

#[juniper::graphql_object]
impl Query {
    fn api_version(&self) -> &str {
        VERSION
    }

    fn recipe(&self, id: Uuid) -> Recipe {
        Recipe::default()
    }
}