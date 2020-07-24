terraform {
  source = "../../..//modules/kubernetes_resources"

  extra_arguments "disable_input" {
    commands  = get_terraform_commands_that_need_input()
    arguments = ["-input=false"]
  }
}

include {
  path = find_in_parent_folders()
}

dependency "gke_cluster" {
  config_path = "../gke_cluster"
  mock_outputs = {
    gke_cluster_name = "known-after-apply"
  }
}

inputs = {
  gke_cluster_name = dependency.gke_cluster.outputs.gke_cluster_name
}
