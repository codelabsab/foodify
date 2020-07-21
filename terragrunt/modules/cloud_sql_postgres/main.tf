locals {
  postgres_password = var.postgres_password != null ? var.postgres_password : random_password.db_password.result
}

resource "google_sql_database_instance" "master" {
  name             = "${var.db_instance_name}-${random_id.db_name_suffix.hex}"
  database_version = "POSTGRES_${var.postgres_version}"
  region           = var.region
  project          = var.project_id

  settings {
    tier              = "db-f1-micro"
    availability_type = "ZONAL"

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.network_self_link
    }
  }
}

resource "random_id" "db_name_suffix" {
  byte_length = 4
}


# Generate a random passwords for the database user
# 16 characters in lenght
# special characters "_%@"
# 1 upper character
resource "random_password" "db_password" {
  length           = 16
  special          = true
  override_special = "_%@"
  min_upper        = 1
}

resource "google_sql_user" "user" {
  name     = var.postgres_user
  instance = google_sql_database_instance.master.name
  password = local.postgres_password
  project  = var.project_id
}
