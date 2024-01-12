output "db-password" {
  value = resource.google_sql_user.user.password
  description = "The password of the cloud sql db generated automatically"
}