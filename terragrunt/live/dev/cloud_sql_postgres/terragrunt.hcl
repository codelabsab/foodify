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
