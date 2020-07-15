output "postgres_public_ip_address" {
  value = google_sql_database_instance.master.public_ip_address
}

output "postgres_connection_name" {
  value = google_sql_database_instance.master.connection_name
}

output "postgres_username" {
  value = var.postgres_user
}

output "postgres_password" {
  value = local.postgres_password
}
