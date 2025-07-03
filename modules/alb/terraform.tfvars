
# name = "okome-portfolio-dev-alb"
# target_group_name = "okome-portfolio-dev-alb-tg"
# target_group_port   = 80
# target_group_protocol   = "HTTP"
# health_check_protocol = "HTTP"
# health_check_path = "/"

# vpc_id = modules.vpc.vpc_id
# internal = false
# subnet_ids = modules.vpc.public_subnet_ids
# security_group_ids = [modules.security_group.alb_sg_id]
# enable_deletion_protection = false
