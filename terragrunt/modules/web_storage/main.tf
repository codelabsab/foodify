

resource "google_storage_bucket" "assets" {
  name          = "bucket-name-${var.project_id}"
  location      = "EU"
  storage_class = "MULTI_REGIONAL"
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_storage_bucket.assets.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}
