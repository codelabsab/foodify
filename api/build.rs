fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("recipe/proto/recipe.proto")?;
    Ok(())
}
