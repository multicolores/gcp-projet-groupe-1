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
module "secret-manager-db" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001-cloud-sql"
    secret-password = module.cloud-sql.db-password
}

module "secret-manager-iam" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001-iam"
    secret-password = module.iam.secret_key_iam
}

# Autoscaler
module "autoscaler" {
    source = "./modules/autoscaler"
    instance-size = "e2-medium"
    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name
}

# IAM
module "iam" {
  source = "./modules/IAM" 
}

# Buckets
resource "random_id" "random_suffix" {
  byte_length = 2
}

module "bucket1" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket1-${random_id.random_suffix.hex}"
  cdn-backend-bucket-name = "insset-groupe1-bucket1-backend-01"
  project-id = "projet-vendredi"
}

module "bucket2" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket2-${random_id.random_suffix.hex}"
  cdn-backend-bucket-name = "insset-groupe1-bucket2-backend-01"
  project-id = "projet-vendredi"
}

module "bucket3" {
  source  = "./modules/buckets"
  bucket-name = "insset-groupe1-bucket3-${random_id.random_suffix.hex}"
  cdn-backend-bucket-name = "insset-groupe1-bucket3-backend-01"
  project-id = "projet-vendredi"
}
