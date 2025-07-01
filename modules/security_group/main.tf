resource "aws_security_group" "alb_sg" {
  name        = "${var.name_prefix}-alb-sg"
  description = "Security group for ALB"
  vpc_id      = module.vpc.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = each.value.from_port
      to_port     = each.value.to_port
      protocol    = each.value.protocol
      cidr_blocks = each.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port   = each.value.from_port
      to_port     = each.value.to_port
      protocol    = each.value.protocol
      cidr_blocks = each.value.cidr_blocks
    }
  }

  tags = {
    Name        = "${var.name_prefix}-alb-sg"
    ManagedBy   = "Terraform"
  }
}
