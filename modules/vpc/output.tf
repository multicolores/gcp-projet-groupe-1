output "vpc-name" {
  value = resource.google_compute_network.vpc_network.name
  description = "The VPC name"
}

output "vpc-id" {
  value = resource.google_compute_network.vpc_network.id
  description = "The VPC ID name"
}

output "subnet-name" {
  value = resource.google_compute_subnetwork.subnet_network.name
  description = "The subnet name"
}
