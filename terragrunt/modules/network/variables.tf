# ---------------------------------------------------------------------------------------------------------------------
# Common
# ---------------------------------------------------------------------------------------------------------------------


variable "project_id" {
  description = "Project ID. The <prefix>-<project>-<suffix>."
}

variable "environment" {
  description = "Environment. prod or non-prod. This will decide Region or Zone."
  type        = string
}

variable "region" {
  description = "GCP region used for all resources"
  default     = "europe-north1"
}
