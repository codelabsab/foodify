
pub struct Query;

#[juniper::graphql_object]
impl Query {
    fn api_version(&self) -> &str {
        "1.2.3"
    }
}