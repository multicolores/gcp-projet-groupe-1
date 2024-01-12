resource "google_service_account" "postgres_db" {
  account_id   = "postgres-db-account"
  display_name = "postgres_DB Service Account"
}

resource "google_project_iam_member" "member" {
  project = "projet-vendredi"
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.postgres_db.email}"
}

