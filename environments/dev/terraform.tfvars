

vpc_id = module.vpc.vpc_id
cidr_block = "10.0.0.0/16"
name       = "my-vpc"
name_prefix = "my-vpc"
tags = {
  Environment = "dev"
  Project     = "infra-aws-portfolio"
}
enable_deletion_protection = false
target_group_protocol = "HTTP"
health_check_path = "/"
health_check_protocol = "HTTP"
health_check_matcher = "200"  
