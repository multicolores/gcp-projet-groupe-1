# VPC
module "vpc" {
    source = "./modules/vpc"

    vpc-name = "projet-001"
    vpc-ip-plage = 10

    project-id = "analog-bot-410808"
}


# Instance
module "instance-bastion" {
    source = "./modules/instances"

    instance-name = "bastion"
    instance-size = "e2-medium"
    instance-tag = "bastion"
    instance-zone = "us-central1-a"

    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name

    project-id = "analog-bot-410808"
}


# Cloud SQL
module "cloud-sql" {
    source = "./modules/cloud-sql"

    sql-database-name = "projet-database"
    database-instance-name = "postgres-instance-001"
    sql-user-name = "user"

    vpc-network-id = module.vpc.vpc-id

    project-id = "analog-bot-410808"
}


# Secret Manager
module "secret-manager-db" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001-cloud-sql"
    secret-password = module.cloud-sql.db-password
    project-id = "analog-bot-410808"
}

module "secret-manager-iam" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001-iam"
    secret-password = module.iam.secret_key_iam
    project-id = "analog-bot-410808"
}

# Autoscaler
module "autoscaler" {
    source = "./modules/autoscaler"

    autoscaler-name = "autoscaler-app"
    autoscaler-zone = "us-central1-a"
    target-pool-name = "target-pool"

    instance-template-name = "app"
    instance-template-size = "e2-medium"
    instance-template-tag = "app"

    group-instance-name = "group-instance"
    group-instance-zone = "us-central1-a"

    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name

    project-id = "analog-bot-410808"
}

# IAM
module "iam" {
  source = "./modules/IAM" 
  project-id = "analog-bot-410808"
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
