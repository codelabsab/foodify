use uuid::Uuid;


#[InputObject]
pub struct CreateRecipe {
    pub id: Uuid
}
