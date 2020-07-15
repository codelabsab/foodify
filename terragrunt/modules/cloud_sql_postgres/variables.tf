variable "region" {
  description = "GCP region used for all resources"
  default     = "europe-north1"
}

variable "project_id" {
  description = "Project ID. The <prefix>-<project>-<suffix>."
}

variable "postgres_version" {
  description = "version of postgres"
  default     = "11"
}

variable "db_instance_name" {
  description = "Name of database"
  default     = "master-instance"
}

variable "postgres_user" {
  description = "Default user for the postgres instance"
  default     = "admin"
}

variable "postgres_password" {
  description = "Password for the postgres user"
  default     = null
}
