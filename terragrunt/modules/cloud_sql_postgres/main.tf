locals {
  postgres_password = var.postgres_password != null ? var.postgres_password : random_password.db_password.result
}

resource "google_sql_database_instance" "master" {
  name             = "${var.setup_prefix}-${var.db_instance_name}"
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


# Generate a random passwords for the database user
# 16 characters in lenght
# 1 upper character
resource "random_password" "db_password" {
  length           = 16
  special          = false
  min_upper        = 1
}

resource "google_sql_user" "user" {
  name     = var.postgres_user
  instance = google_sql_database_instance.master.name
  password = local.postgres_password
  project  = var.project_id
}

resource "google_service_account" "service_account" {
  account_id        = "${var.setup_prefix}-postgres"
  project           = var.project_id
}

resource "google_project_iam_member" "service_account_iam" {
  project           = var.project_id
  role              = "roles/cloudsql.client"
  member            = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_service_account_key" "service_account_key" {
  service_account_id = google_service_account.service_account.name
}
