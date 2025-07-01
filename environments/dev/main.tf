module "vpc" {
  source             = "../../modules/vpc"
  vpc_id          = module.vpc.vpc_id
  name            = module.vpc.name
  cidr_block      = module.vpc.cidr_bl
}

module "security_group" {
  source          = "../../modules/security_group"
  name_prefix     = "${var.name_prefix}-sg"
  ingress_rules   = [module.security_group.ingress_rules]
  egress_rules    = [module.security_group.egress_rules]
}

# module "alb" {
#   source                  = "../../modules/alb"
#   name                    = "${var.name_prefix}-alb"
  #vpc_id                  = module.vpc.vpc_id
  # subnet_ids              = module.vpc.public_subnet_ids
  # security_group_ids      = module.security_group.alb_sg_id
  # health_check_protocol   = module.alb.health_check_protocol
  # target_group_protocol   = module.alb.target_group_protocol
  # target_group_port       = module.alb.target_group_port
  # target_group_name       = "${var.name_prefix}-tg"
  # health_check_path       = module.alb.health_check_path
  # enable_deletion_protection = module.enable_deletion_protection
# }
