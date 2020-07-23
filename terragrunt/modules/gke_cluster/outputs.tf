# ---------------------------------------------------------------------------------------------------------------------
# Kubernetes
# ---------------------------------------------------------------------------------------------------------------------

output "gke_cluster_name" {
  value = google_container_cluster.gke.name
}
output "gke_endpoint" {
  value = google_container_cluster.gke.endpoint
}

output "gke_master_auth_client_certificate" {
  value     = google_container_cluster.gke.master_auth[0].client_certificate
  sensitive = true
}
output "gke_master_auth_cluster_ca_certificate" {
  value     = google_container_cluster.gke.master_auth[0].cluster_ca_certificate
  sensitive = true
}

output "gke_master_auth_client_key" {
  value     = google_container_cluster.gke.master_auth[0].client_key
  sensitive = true
}

output "gke_cluster_location" {
  value = google_container_cluster.gke.location
}

output "gke_zones" {
  description = "Output available compute zones as list(string)"
  value       = data.google_compute_zones.info_available_k8_zones.names
}

output "gke_public_ip" {
  description = "The public ip to be used by the ingress controller"
  value       = google_compute_global_address.ip.address
}
