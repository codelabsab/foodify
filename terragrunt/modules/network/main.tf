# ---------------------------------------------------------------------------------------------------------------------
# HELPER
# ---------------------------------------------------------------------------------------------------------------------

resource "random_id" "random_id_suffix" {
  byte_length              = 2
}

# ---------------------------------------------------------------------------------------------------------------------
# VPC NETWORK
# ---------------------------------------------------------------------------------------------------------------------

resource "google_compute_network" "vpc_network" {
  name                     = "${var.setup_prefix}-network"
  project                  = var.project_id
}

resource "google_compute_global_address" "private_ip_address" {
  name          = "${var.setup_prefix}-private-ip"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = google_compute_network.vpc_network.id
  project                  = var.project_id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.vpc_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
  project                  = var.project_id
}
