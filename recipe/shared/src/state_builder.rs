use crate::{RecipeEventData, RecipeState};
use eventific::event::Event;

pub fn state_builder(state: &mut RecipeState, event: &Event<RecipeEventData>) {

    match &event.payload {
        RecipeEventData::Created { title, .. } => {
            state.title = title.to_string();
        },
        RecipeEventData::DescriptionChanged { description } => {
            state.description.replace(description.to_string());
        },
        RecipeEventData::BriefDescriptionChanged { brief_description } => {
            state.brief_description.replace(brief_description.to_string());
        },
    }
}
