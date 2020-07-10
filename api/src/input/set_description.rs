use uuid::Uuid;


#[InputObject]
pub struct SetDescription {
    pub id: Uuid,
    pub description: String
}
