# ---------------------------------------------------------------------------------------------------------------------
# DATA SOURCES
# ---------------------------------------------------------------------------------------------------------------------

data "google_container_engine_versions" "info_available_k8_versions" {
  project        = var.project_id
  location       = var.region
  version_prefix = var.gke_major_version
}

data "google_compute_zones" "info_available_k8_zones" {
  project = var.project_id
  region  = var.region
  status  = "UP"
}
