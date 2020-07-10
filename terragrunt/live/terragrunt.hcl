remote_state {
  backend = "gcs"

  config = {
    bucket = "foodify-terraform-state"
    prefix = format("terraform/state/%s/${path_relative_to_include()}", local.environment)
  }
}

terraform_version_constraint = "0.12.21"

locals {
  environment          = chomp(run_cmd("/usr/bin/basename", get_parent_terragrunt_dir()))
}

inputs = merge(
  yamldecode(
    file("${get_terragrunt_dir()}/../common_values.yaml"),
    ), {
    environment = local.environment
  }
)
