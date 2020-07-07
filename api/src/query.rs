pub struct Query;

#[Object]
impl Query {
    async fn api_version(&self) -> &str {
        "1.2.3"
    }
}
