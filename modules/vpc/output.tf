output "vpc-name" {
  value = resource.google_compute_network.vpc_network.name
}

output "subnet-name" {
  value = resource.google_compute_subnetwork.subnet_network.name
}
