# VPC
module "vpc" {
    source = "./modules/vpc"
    vpc-name = "vpc-projet"
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

# TODO - create firwall allow-ssh-from-bastion-to-app
