resource "google_sql_database" "database" {
  name     = "projet-database"
  instance = google_sql_database_instance.postgres-db.name
}

resource "google_sql_database_instance" "postgres-db" {
  name             = "postgres-instance-001"
  database_version = "POSTGRES_15"


  settings {
    tier = "db-g1-small"
  }
}

resource "random_password" "db_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "user" {
  name     = "user"
  instance = google_sql_database_instance.postgres-db.name
  password = random_password.db_password.result
}