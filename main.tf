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

# Secret Manager
module "secret-manager" {
    source = "./modules/secret-manager"
    secret-manager-name = "projet-001"
}

# Autoscaler
module "autoscaler" {
    source = "./modules/autoscaler"
    instance-size = "e2-medium"
    vpc-name = module.vpc.vpc-name
    subnet-name = module.vpc.subnet-name
}
