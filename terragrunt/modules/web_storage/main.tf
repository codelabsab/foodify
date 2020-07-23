

resource "google_storage_bucket" "assets" {
  project          = var.project_id
  name          = var.setup_prefix
  location      = "EU"
  storage_class = "MULTI_REGIONAL"
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_compute_backend_bucket" "assets" {
  project          = var.project_id
  name        = var.setup_prefix
  description = "Contains static app assets"
  bucket_name = google_storage_bucket.assets.name
  enable_cdn  = true
}

resource "google_compute_url_map" "assets" {
  name            = var.setup_prefix
  default_service = google_compute_backend_bucket.assets.self_link
}

resource "google_compute_global_address" "assets" {
  project          = var.project_id
  name    = "${var.setup_prefix}-web-ip"
}

resource "google_compute_global_forwarding_rule" "assets" {
  name       = "${var.setup_prefix}-forward-rule"
  target     = google_compute_target_http_proxy.assets.self_link
  ip_address = google_compute_global_address.assets.address
  port_range = "80"
}

resource "google_compute_target_http_proxy" "assets" {
  name    = "${var.setup_prefix}-target-proxy"
  url_map = google_compute_url_map.assets.self_link
}

resource "google_compute_target_https_proxy" "assets" {
  project          = var.project_id
  name             = "${var.setup_prefix}-target-proxy"
  url_map          = google_compute_url_map.assets.self_link
  ssl_certificates = [google_compute_managed_ssl_certificate.assets.self_link]
}

resource "google_compute_global_forwarding_rule" "https-assets" {
  name       = "${var.setup_prefix}-https-forward-rule"
  target     = google_compute_target_https_proxy.assets.self_link
  ip_address = google_compute_global_address.assets.address
  port_range = 443
}

resource "google_compute_managed_ssl_certificate" "assets" {
  provider = google-beta
  project  = var.project_id
  name     = "${var.setup_prefix}-certificate"
  managed {
    domains = ["${var.environment}.chefster.se"]
  }
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
