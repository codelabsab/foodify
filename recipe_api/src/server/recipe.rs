use uuid::Uuid;
use chrono::{DateTime, Utc};
use std::time::Duration;

pub struct Recipe {
    id: Uuid,
    title: String,
    description: String,
    created_date: DateTime<Utc>,
    updated_date: DateTime<Utc>,
    time: Duration
}

impl Recipe {

    pub fn new(
        id: Uuid,
        title: &str,
        description: &str,
        created_date: &DateTime<Utc>,
        updated_date: &DateTime<Utc>,
        time: &Duration
    ) -> Self {
        Self {
            id: id,
            title: title.to_string(),
            description: description.to_string(),
            created_date: created_date.to_owned(),
            updated_date: updated_date.to_owned(),
            time: time.to_owned()
        }
    }
}

#[juniper::graphql_object]
impl Recipe {
    #[graphql(description = "The id of this recipe")]
    fn id(&self) -> &Uuid {
        &self.id
    }

    #[graphql(description = "The title")]
    fn title(&self) -> &str {
        &self.title
    }

    #[graphql(description = "A awesome description")]
    fn description(&self) -> &str {
        &self.description
    }

    #[graphql(description = "When this recipe was created")]
    fn created_date(&self) -> &DateTime<Utc> {
        &self.created_date
    }

    #[graphql(description = "When this recipe was last updated")]
    fn updated_date(&self) -> &DateTime<Utc> {
        &self.updated_date
    }

    #[graphql(description = "Then time in milliseconds it takes to complete this recipe")]
    fn time(&self) -> i32 {
        self.time.as_millis() as i32
    }
}

impl Default for Recipe {
    fn default() -> Self {
        Self {
            id: Uuid::new_v4(),
            title: "Tacos".to_string(),
            description: "Delicious meal best eaten with friends and family".to_string(),
            created_date: Utc::now(),
            updated_date: Utc::now(),
            time: Duration::from_secs(60 * 120)
        }
    }
}

#[cfg(test)]
mod tests {
    use crate::server::recipe::Recipe;
    use std::time::Duration;
    use uuid::Uuid;
    use chrono::{DateTime, Utc};

    fn create_mock() -> Recipe {
        Recipe::new(
            Uuid::nil(),
            "TITLE",
            "DESCRIPTION",
            &DateTime::parse_from_rfc2822("2010-06-09T15:20:00Z").unwrap().into(),
            &DateTime::parse_from_rfc2822("2010-06-09T15:20:00Z").unwrap().into(),
            &Duration::from_secs(1)
        )
    }

    #[test]
    fn new_should_set_all_fields() {
        let recipe = Recipe::new(
            Uuid::nil(),
            "TITLE",
            "DESCRIPTION",
            &DateTime::parse_from_rfc3339("2010-06-09T15:20:00Z").unwrap().into(),
            &DateTime::parse_from_rfc3339("2010-06-09T15:20:00Z").unwrap().into(),
            &Duration::from_secs(1)
        );

        assert_eq!(Uuid::nil(), recipe.id);
        assert_eq!("TITLE", recipe.title);
        assert_eq!("DESCRIPTION", recipe.description);
        assert_eq!(DateTime::<Utc>::from(DateTime::parse_from_rfc3339("2010-06-09T15:20:00Z").unwrap()), recipe.created_date);
        assert_eq!(DateTime::<Utc>::from(DateTime::parse_from_rfc3339("2010-06-09T15:20:00Z").unwrap()), recipe.updated_date);
        assert_eq!(Duration::from_secs(1), recipe.time);
    }
}