output "public_ip" {
  value = google_compute_global_address.assets.address
}

output "bucket_id" {
  value = google_storage_bucket.assets.id
}

output "load_balancer_name" {
  value = google_storage_bucket.assets.id
}


