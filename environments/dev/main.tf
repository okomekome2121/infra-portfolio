
module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = var.cidr_block
  name       = var.name
}

# ALB Module
module "alb" {
  source = "../../modules/alb"

  alb_name               = module.alb.alb_name
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
  #vpc_id      = var.vpc_id
  name_prefix = var.name_prefix
}

