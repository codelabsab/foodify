use uuid::Uuid;

pub struct Recipe {
    id: Uuid,
    title: String
}

#[juniper::graphql_object]
impl Recipe {
    fn id(&self) -> &Uuid {
        &self.id
    }

    fn title(&self) -> &str {
        &self.title
    }
}

impl Default for Recipe {
    fn default() -> Self {
        Self {
            id: Uuid::new_v4(),
            title: "Tacos".to_string()
        }
    }
}