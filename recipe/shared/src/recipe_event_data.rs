use eventific::event::EventData;
use uuid::Uuid;


#[derive(Debug, Clone, strum_macros::EnumIter, strum_macros::AsRefStr, serde::Serialize, serde::Deserialize)]
pub enum RecipeEventData {
    Created { owner_id: Uuid, title: String },
    DescriptionChanged { description: String },
    BriefDescriptionChanged { brief_description: String },
}

impl EventData for RecipeEventData {}
