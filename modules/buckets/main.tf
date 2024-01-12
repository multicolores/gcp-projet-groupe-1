resource "google_storage_bucket" "bucket" {
  name          = var.bucket-name
  location      = "us-central1"
  force_destroy = true

  public_access_prevention = "enforced"
}

resource "google_compute_backend_bucket" "cdn_backend_bucket" {
  name        = var.cdn-backend-bucket-name
  project     = var.project-id
  bucket_name = google_storage_bucket.bucket.name
  enable_cdn  = true
}
