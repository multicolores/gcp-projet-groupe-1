output "vm-name" {
  value = resource.google_compute_instance.moninstance1.name
  description = "The VM name"
}

output "instance-id" {
    value = resource.google_compute_instance.moninstance1.id
}
