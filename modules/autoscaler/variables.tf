variable "vpc-name" {
  type        = string
  description = "The VPC name"
}

variable "subnet-name" {
  type        = string
  description = "The subnet name"
}

variable "instance-template-name" {
  type        = string
  description = "The instance template name"
}

variable "instance-template-size" {
  type        = string
  description = "The instance template size"
}

variable "instance-template-tag" {
  type        = string
  description = "The instance template tag"
}

variable "autoscaler-name" {
  type        = string
  description = "The autoscaler name"
} 

variable "autoscaler-zone" {
  type        = string
  description = "The autoscaler zone"
}

variable "target-pool-name" {
  type        = string
  description = "The target pool name"
}

variable "project-id" {
  type        = string
  description = "The project id"
}

variable "group-instance-name" {
  type        = string
  description = "The group instance name"
}

variable "group-instance-zone" {
  type        = string
  description = "The group instance zone"
}
