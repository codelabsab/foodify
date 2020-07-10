# ---------------------------------------------------------------------------------------------------------------------
# This expects an existing GKE cluster
# ---------------------------------------------------------------------------------------------------------------------

locals {
  gke_cluster_location = var.environment == "prod" ? var.region : var.gke_zones[0]
}


# ---------------------------------------------------------------------------------------------------------------------
# CREATE KUBECTL CREDENTIAL FILE
# ---------------------------------------------------------------------------------------------------------------------

resource "null_resource" "configure_kubectl" {
  provisioner "local-exec" {
    when    = create
    command = "gcloud container clusters get-credentials ${var.gke_cluster_name} --region ${local.gke_cluster_location} --project ${var.project_id}"
  }
  triggers = {
    always_run = timestamp()
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# PROVIDER
# ---------------------------------------------------------------------------------------------------------------------


provider "null" {
  version = ">= 2.1.2"
}
