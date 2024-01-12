variable "instance-name" {
  type        = string
  default     = "value"
  description = "Instance name"
}

variable "instance-size" {
  type        = string
  description = "Instance size"
}

variable "vpc-name" {
  type        = string
  description = "VPC name"
}

variable "subnet-name" {
  type        = string
  description = "Subnet name"
}

variable "instance-tag" {
  type        = string
  description = "Instance tag"
}

variable "instance-zone" {
  type        = string
  description = "Instance zone"
}

variable "project-id" {
    type        = string
    description = "The project id"
}
