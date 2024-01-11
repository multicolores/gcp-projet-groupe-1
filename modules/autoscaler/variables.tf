variable "vpc-name" {
  type        = string
}

variable "subnet-name" {
  type        = string
}

output "vm-name" {
  value = resource.google_compute_instance.moninstance1.name
  description = "The VM name"
}

variable "instance-name" {
  type        = string
  default     = "value"
  description = "Le nom de l'instance"
}

variable "instance-size" {
  type        = string
  description = "La taille de l'instance"
}