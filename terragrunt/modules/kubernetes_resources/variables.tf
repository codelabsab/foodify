variable "region" {
  description = "GCP region used for all resources"
  default     = "europe-north1"
}

variable "project_id" {
  description = "Project ID. The <prefix>-<project>-<suffix>."
}

variable "gke_cluster_name" {
  description = "GKE cluster name. <project>-gke-<random_id>"
}
