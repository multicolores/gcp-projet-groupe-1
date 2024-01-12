resource "google_service_account" "postgres_DB" {
  account_id   = "postgres_DB-service-account"
  display_name = "postgres_DB Service Account"
}

resource "google_project_iam_member" "member" {
  project = "analog-bot-410808"
  role    = "roles/editor"
  member  = "serviceAccount:${google_service_account.postgres_DB.email}"
}

resource "google_project_iam_policy" "postgres_DB_policy" {
  project = "analog-bot-410808"
  policy_data = <<EOF
{
  "bindings": [
    {
      "members": ["serviceAccount:${google_service_account.postgres_DB.email}"],
      "role": "roles/editor"
    }
  ]
}
EOF
}