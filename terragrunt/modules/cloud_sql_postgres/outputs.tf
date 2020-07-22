output "postgres_private_ip_address" {
  value = google_sql_database_instance.master.private_ip_address
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

output "postgres_service_account_key_file" {
  value = base64decode(google_service_account_key.service_account_key.private_key)
}
