use std::time::Duration;
use chrono::DateTime;
use chrono::Utc;

#[derive(Debug, serde::Serialize, serde::Deserialize)]
pub struct RecipeState {
    /// The title of this recipe
    pub title: String,

    /// A brief description of this recipe, should be very short
    pub brief_description: Option<String>,

    /// A full description of this recipe
    pub description: Option<String>,

    /// When this recipe was created
    pub created_date: DateTime<Utc>,

    /// When this recipe was last updated
    pub last_updated_date: DateTime<Utc>,

    pub cooking_duration: Duration
}

impl Default for RecipeState {
    fn default() -> Self {
        Self {
            title: "".to_string(),
            brief_description: None,
            description: None,
            created_date: Utc::now(),
            last_updated_date: Utc::now(),
            cooking_duration: Duration::from_nanos(0)
        }
    }
}
