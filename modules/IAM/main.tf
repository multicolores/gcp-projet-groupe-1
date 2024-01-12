resource "google_service_account" "postgres_db" {
  account_id   = "postgres-db-service-account"
  display_name = "postgres_DB Service Account"
}

resource "google_project_iam_member" "member" {
  project = "analog-bot-410808"
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.postgres_db.email}"
}

