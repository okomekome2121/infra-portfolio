module "vpc" {
  source             = "../../modules/vpc"
  cvpc_cidr_block    = var.cidr_block
  name               = var.name_prefix
}

module "security_group" {
  source          = "../../modules/security_group"
  vpc_id          = module.vpc.vpc_id
  name_prefix     = [module.vpc.name, "sg"]
  ingress_rules   = [module.security_group.ingress_rules]
  egress_rules    = [module.security_group.egress_rules]
  tags            = var.tags
}

module "alb" {
  source                  = "../../modules/alb"
  name                    = "${var.name_prefix}-alb"
  vpc_id                  = module.vpc.vpc_id
  subnet_ids              = module.vpc.public_subnet_ids
  security_group_ids      = module.security_group.alb_sg_id
  health_check_protocol   = module.alb.health_check_protocol
  target_group_protocol   = module.alb.target_group_protocol
  target_group_port       = module.alb.target_group_port
  target_group_name       = "${var.name_prefix}-tg"
  health_check_path       = module.alb.health_check_path
  tags                    = {
    Environment = "dev"
    Name        = "${var.name_prefix}-alb"
  }
}
