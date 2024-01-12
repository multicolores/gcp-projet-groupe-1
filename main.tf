# VPC
module "vpc" {
    source = "./modules/vpc"
    vpc-name = "projet-001"
    vpc-ip-plage = 10
}

# Instance
module "instance-bastion" {
    source = "./modules/instances"
    instance-name = "bastion"
    instance-size = "e2-medium"
    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name
    tag = "bastion"
}

# Cloud SQL
module "cloud-sql" {
    source = "./modules/cloud-sql"
    vpc-network-id = module.vpc.vpc-id
}

# Secret Manager
module "secret-manager" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001"
    secret-password = module.cloud-sql.db-password
}

# Autoscaler
module "autoscaler" {
    source = "./modules/autoscaler"
    instance-size = "e2-medium"
    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name
}

# Buckets
module "bucket1" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket1-01"
  cdn-backend-bucket-name = "insset-groupe1-bucket1-backend-01"
  project-id = "analog-bot-410808"
}

module "bucket2" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket2-01"
  cdn-backend-bucket-name = "insset-groupe1-bucket2-backend-01"
  project-id = "analog-bot-410808"
}

module "bucket3" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket3-01"
  cdn-backend-bucket-name = "insset-groupe1-bucket3-backend-01"
  project-id = "analog-bot-410808"
}
