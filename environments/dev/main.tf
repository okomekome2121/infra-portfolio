provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "okome-terraform-state-bucket"
    key    = "env:/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  name       = "my-vpc"
  #vpc_id     = module.vpc.vpc_id
  #gateway_id = module.vpc.gateway_id
}

# ALB Module
module "alb" {
  source = "../../modules/alb"

  name               = "okome-portfolio-dev-alb"
  internal           = false
  security_groups = [module.security_groups.alb_sg_id]
  subnets        = module.vpc.public_subnet_ids
  target_group_name  = "okome-portfolio-dev-alb-tg"
  target_group_port  = 80
  vpc_id             = module.vpc.vpc_id
}

module "security_groups" {
  source      = "../../modules/security_groups"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "dev"
}

