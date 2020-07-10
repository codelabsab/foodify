fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::compile_protos("../recipe/command/proto/recipe.proto")?;
    Ok(())
}
