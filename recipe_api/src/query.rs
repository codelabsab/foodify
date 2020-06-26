use uuid::Uuid;
use crate::recipe::Recipe;


pub struct Query;

#[juniper::graphql_object]
impl Query {
    fn api_version(&self) -> &str {
        "1.2.3"
    }

    fn recipe(&self, id: Uuid) -> Recipe {
        Recipe::default()
    }
}