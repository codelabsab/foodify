# ---------------------------------------------------------------------------------------------------------------------
# HELPER
# ---------------------------------------------------------------------------------------------------------------------

resource "random_id" "random_id_suffix" {
  byte_length = 2
}

# ---------------------------------------------------------------------------------------------------------------------
# LOCAL VARIABLES
# ---------------------------------------------------------------------------------------------------------------------

locals {
  # In prod we will automatically set gke_cluster_location to the region
  # In dev we will set it to the first available zone that is in "UP" status (see google_compute_zones" data resource)
  gke_cluster_location        = var.environment == "prod" ? var.region : data.google_compute_zones.info_available_k8_zones.names[0]
  resource_labels_fingerprint = google_container_cluster.gke.resource_labels
  cluster_ca_certificate      = google_container_cluster.gke.master_auth[0].cluster_ca_certificate
}

# ---------------------------------------------------------------------------------------------------------------------
# GKE CLUSTER
# ---------------------------------------------------------------------------------------------------------------------

resource "google_container_cluster" "gke" {
  provider                 = google-beta
  name                     = var.setup_prefix
  location                 = local.gke_cluster_location
  project                  = var.project_id
  min_master_version       = data.google_container_engine_versions.info_available_k8_versions.latest_master_version
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

  # Self links in the same resource isn't allowed, hence explicit declaration.
  resource_labels = {
    name = "${var.setup_prefix}"
    type = "gke-master"
  }

  networking_mode = "VPC_NATIVE"
  network = var.network_self_link

  #Adding this block enables IP aliasing, making the cluster VPC-native instead of routes-based.
  ip_allocation_policy {}

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  addons_config {
    http_load_balancing {
      disabled = var.gke_http_load_balancing_disable
    }

    horizontal_pod_autoscaling {
      disabled = var.gke_horizontal_pod_autoscaling_disable
    }

    istio_config {
      disabled = false
      auth = "AUTH_MUTUAL_TLS"
    }

  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = var.daily_maintenance
    }
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# GKE CLUSTER NODE POOL
# ---------------------------------------------------------------------------------------------------------------------

resource "google_container_node_pool" "gcc_nodes" {
  name     = "${google_container_cluster.gke.name}-node-pool"
  location = local.gke_cluster_location
  project  = var.project_id
  cluster  = google_container_cluster.gke.name
  version  = data.google_container_engine_versions.info_available_k8_versions.latest_node_version # Declearing node version on google container cluster only applies to the default pool which we remove.

  initial_node_count = var.initial_node_count

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_repair  = true
    auto_upgrade = var.gke_auto_upgrade
  }

  timeouts {
    create = var.gke_change_timeout
    update = var.gke_change_timeout
    delete = var.gke_change_timeout
  }

  upgrade_settings {
    max_surge       = var.gke_upgrade_max_surge
    max_unavailable = 0
  }

  node_config {
    preemptible  = false
    image_type   = var.node_image_type
    machine_type = var.node_machine_type
    disk_type    = var.node_disk_type
    disk_size_gb = var.node_disk_size

    service_account = var.gke_service_account

    metadata = {
      disable-legacy-endpoints = true
      master                   = google_container_cluster.gke.name
      name                     = "${google_container_cluster.gke.name}-node-pool"
      type                     = "gke-node"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}

resource "google_compute_global_address" "ip" {
  project          = var.project_id
  name    = "${var.setup_prefix}-gke-ip"
}
