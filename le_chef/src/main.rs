
#[macro_use]
extern crate failure;

use clap::Clap;
use colored::*;
use serde_json::Value;
use uuid::Uuid;
use rand::seq::SliceRandom;
use futures::{TryStreamExt, StreamExt};
use failure::Error;

#[derive(Clap)]
#[clap(version = "1.0", author = "Joatin Granlund <joatin.granlund@codelabs.se>")]
struct Opts {
    #[clap(short, long, default_value = "http://foodify.local.app.garden/api")]
    api_endpoint: String,
    /// A level of verbosity, and can be used multiple times
    #[clap(short, long, parse(from_occurrences))]
    verbose: i32,
}

#[tokio::main]
async fn main() -> Result<(), Error> {
    let opts: Opts = Opts::parse();

    let superlative_raw = include_str!("superlative.txt");
    let transform_raw = include_str!("transform.txt");
    let ingredient_raw = include_str!("ingredient.txt");
    let superlative_list: Vec<_> = superlative_raw.split('\n').collect();
    let transform_list: Vec<_> = transform_raw.split('\n').collect();
    let ingredient_list: Vec<_> = ingredient_raw.split('\n').collect();

    println!("Le Chef is thinking...");
    println!("What wonders should I cook today");
    println!("Le Chef will store his creations in the API located at: {}", opts.api_endpoint.yellow());
    println!("Thinking...");

    let mut recipes = Vec::with_capacity(10);
    for _ in 0..10 {
        let (title, queries) = recipe(&superlative_list, &transform_list, &ingredient_list);
        println!("Dreaming: {}", title.purple());
        recipes.push(queries);
    }

    let api_endpoint = opts.api_endpoint.to_string();
    futures::stream::iter(recipes.into_iter())
        .map(|i| Ok(i))
        .try_for_each_concurrent(50, |queries| {
            let api_endpoint = api_endpoint.to_string();
            async move {
                for query in queries {
                    let status = reqwest::Client::new()
                        .post(&api_endpoint)
                        .json(&query)
                        .send()
                        .await?
                        .status();

                    if !status.is_success() {
                        bail!("Failed call api")
                    }
                }
                Ok(())
            }
        }).await?;

    println!("Le Chef is feeling creative, lets create 490 more");

    recipes = Vec::with_capacity(490);
    for _ in 0..490 {
        let (title, queries) = recipe(&superlative_list, &transform_list, &ingredient_list);
        recipes.push(queries)
    }


    let api_endpoint = opts.api_endpoint.to_string();
    futures::stream::iter(recipes.into_iter())
        .map(|i| Ok(i))
        .try_for_each_concurrent(10, |queries| {
            let api_endpoint = api_endpoint.to_string();
            async move {
                for query in queries {
                    let status = reqwest::Client::new()
                        .post(&api_endpoint)
                        .json(&query)
                        .send()
                        .await?
                        .status();

                    if !status.is_success() {
                        bail!("Failed call api")
                    }
                }
                Ok(())
            }
        }).await?;

    println!("Le Chef feels happy about his {} creations, he's going for a nap, bye bye 👋", "500".yellow());

    Ok(())
}


fn gen_description(superlative: &str, transform: &str, ingredient: &str) -> String {
    format!("This {0} {1} {2} is carefully crafted by our chef Le Chef. Besides from being {0}, {1} {2} can be very nourishing. We truly hope you enjoy this dish", superlative, transform, ingredient)
}


fn gen_brief_description(superlative: &str, transform: &str, ingredient: &str) -> String {
    format!("{0} {1} {2} by our chef Le Chef", superlative, transform, ingredient)
}

fn gen_title(superlative: &str, transform: &str, ingredient: &str) -> String {
    format!("{0} {1} {2}", superlative, transform, ingredient)
}

fn recipe(superlative_list: &Vec<&str>, transform_list: &Vec<&str>, ingredient_list: &Vec<&str>) -> (String, Vec<Value>) {
    let superlative = superlative_list.choose(&mut rand::thread_rng()).unwrap();
    let transform = transform_list.choose(&mut rand::thread_rng()).unwrap();
    let ingredient = ingredient_list.choose(&mut rand::thread_rng()).unwrap();


    let title = gen_title(superlative, transform, ingredient);
    let brief_description = gen_brief_description(superlative, transform, ingredient);
    let description = gen_description(superlative, transform, ingredient);

    let id = Uuid::new_v4();

    (title.to_string(), vec![
        serde_json::json!({
            "operationName": null,
            "variables": {},
            "query": format!("mutation {{createRecipe(recipe: {{id: \"{}\",title: \"{}\"}})}}", id, title)
        }),
        serde_json::json!({
            "operationName": null,
            "variables": {},
            "query": format!("mutation {{setDescription(recipe: {{id: \"{}\",description: \"{}\"}})}}", id, description)
        }),
        serde_json::json!({
            "operationName": null,
            "variables": {},
            "query": format!("mutation {{setBriefDescription(recipe: {{id: \"{}\",description: \"{}\"}})}}", id, brief_description)
        })
    ])
}
