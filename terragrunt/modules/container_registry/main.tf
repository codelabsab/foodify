resource "google_container_registry" "registry" {
  project  = var.project_id
  location = "EU"
}

data "google_container_registry_repository" "foo" {
  project  = var.project_id
  location = "EU"
}
