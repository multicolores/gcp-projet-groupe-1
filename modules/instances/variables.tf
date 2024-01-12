variable "instance-name" {
  type        = string
  default     = "value"
  description = "Le nom de l'instance"
}

variable "instance-size" {
  type        = string
  description = "La taille de l'instance"
}

variable "vpc-name" {
  type        = string
  description = "VPC name"
}

variable "subnet-name" {
  type        = string
  description = "Subnet name"
}

variable "tag" {
  type        = string
  description = "TAG name"
}
