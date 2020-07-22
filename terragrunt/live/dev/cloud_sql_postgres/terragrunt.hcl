terraform {
  source = "../../..//modules/cloud_sql_postgres"

  extra_arguments "disable_input" {
    commands  = get_terraform_commands_that_need_input()
    arguments = ["-input=false"]
  }
}

include {
  path = find_in_parent_folders()
}

dependency "network" {
  config_path = "../network"
  mock_outputs = {
    network_self_link = "known-after-apply"
  }
}

dependency "setup_prefix" {
  config_path = "../setup_prefix"
  mock_outputs = {
    setup_prefix = "known-after-apply"
  }
}

inputs = {
  network_self_link = dependency.network.outputs.network_self_link
  setup_prefix = dependency.setup_prefix.outputs.setup_prefix
}

