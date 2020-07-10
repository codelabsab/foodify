use uuid::Uuid;
use chrono::{DateTime, Utc};

pub struct Recipe {
    id: Uuid,
    title: String,
    description: Option<String>,
    brief_description: Option<String>,
    created_date: DateTime<Utc>
}

impl Recipe {
    pub fn new(
        id: Uuid,
        title: String,
        description: Option<String>,
        brief_description: Option<String>,
        created_date: DateTime<Utc>,
    ) -> Self {
        Self {
            id,
            title,
            description,
            brief_description,
            created_date
        }
    }
}

#[Object]
impl Recipe {

    async fn id(&self) -> &Uuid {
        &self.id
    }

    async fn title(&self) -> &str {
        &self.title
    }

    async fn description(&self) -> &Option<String> {
        &self.description
    }

    async fn brief_description(&self) -> &Option<String> {
        &self.brief_description
    }

    async fn created_date(&self) -> &DateTime<Utc> {
        &self.created_date
    }
}
