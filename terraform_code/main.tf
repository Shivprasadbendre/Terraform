provider "aws" {
  region="us-east-1"
  aws_access_key=var.aws_access_key
  aws_secret_access_key=var.aws_secret_access_key
}

module "compute" {
    source = "../modules/compute"
    instance_name = var.instance_name
    ami_id = var.ami_id
    instance_type = var.instance_type
    vpc_id = var.vpc_id
    subnet_id = var.subnet_id
    key_name = var.key_name
    tags = var.tags
}
