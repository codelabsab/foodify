terraform {
  source = "../../..//modules/network"

  extra_arguments "disable_input" {
    commands  = get_terraform_commands_that_need_input()
    arguments = ["-input=false"]
  }
}

include {
  path = find_in_parent_folders()
}

dependency "setup_prefix" {
  config_path = "../setup_prefix"
  mock_outputs = {
    setup_prefix = "known-after-apply"
  }
}

inputs = {
  setup_prefix = dependency.setup_prefix.outputs.setup_prefix
}
