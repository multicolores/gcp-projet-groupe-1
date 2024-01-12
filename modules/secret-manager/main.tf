resource "google_secret_manager_secret" "secret-manager" {
  secret_id = "secret-manager-${var.secret-manager-name}"

  labels = {
    label = "connexion-string-secret-for-cloud-sql-db"
  }

  replication {
    auto {}
  }
}

# TODO - update "my-connexion-string-for-cloud-sql-db"" with password of user used to log in the cloud sql db. 
resource "google_secret_manager_secret_version" "secret_version" {
  secret       = google_secret_manager_secret.secret-manager.id
  secret_data  = var.secret-password
}