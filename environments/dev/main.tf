terraform {
  backend "s3" {
    bucket = "okome-terraform-state-bucket"
    key    = "env:/terraform.tfstate"
    region = "ap-northeast-1"
    #dynamodb_table = "your-lock-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

# module "network" {
#   source = "../../modules/network"
# }

# module "compute" {
#   source = "../../modules/compute"
# }

# module "database" {
#   source = "../../modules/database"
# }

# VPC
module "vpc" {
  source = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  name       = "my-vpc"
} 

# ALB Module 呼び出し
module "alb" {
  source = "../../modules/alb"

  name               = "my-alb"
  internal           = false
  security_groups = [module.security_groups.alb_sg_id] # これも module 経由で渡すべき
  subnets        = module.vpc.public_subnet_ids
  target_group_name  = "my-tg"
  target_group_port  = 80
  vpc_id             = module.vpc.vpc_id
}

module "security_groups" {
  source      = "../../modules/security_groups"
  vpc_id      = module.vpc.vpc_id
  name_prefix = "dev"
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = {
    Name = "${var.name_prefix}-public-rt"
  }
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "dev"
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public.id
}
