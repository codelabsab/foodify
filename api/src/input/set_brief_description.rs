use uuid::Uuid;


#[InputObject]
pub struct SetBriefDescription {
    pub id: Uuid,
    pub description: String
}
