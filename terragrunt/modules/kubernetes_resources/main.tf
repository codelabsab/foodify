data "google_client_config" "provider" {}

data "google_container_cluster" "my_cluster" {
  name     = var.gke_cluster_name
  location = var.region
}

provider "kubernetes" {
  load_config_file = false

  host  = "https://${data.google_container_cluster.my_cluster.endpoint}"
  token = data.google_client_config.provider.access_token
  cluster_ca_certificate = base64decode(
  data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate,
  )
}

resource "kubernetes_namespace" "chefster_namespace" {
  metadata {
    annotations = {
      name = "chefster"
    }

    labels = {
      istio-injection = "enabled"
    }

    name = "chefster"
  }
}
