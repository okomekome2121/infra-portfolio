output "alb_sg_id" {
  description = "ALB security group ID"
  value       = aws_security_group.alb_sg.id
}
output "alb_sg_name" {
  description = "ALB security group name"
  value       = aws_security_group.alb_sg.name
}
