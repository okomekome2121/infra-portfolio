output "health_check_protocol" {
  value = var.health_check_protocol
}
output "target_group_protocol" {
  value = var.target_group_protocol
}
output "target_group_port" {
  value = var.target_group_port
}
output "target_group_name" {
  value = var.target_group_name
}
output "health_check_path" {
  value = var.health_check_path
}
output "alb_arn" {
  description = "ALBのARN"
  value       = aws_lb.test.arn
}
output "alb_zone_id" {
  description = "ALBのゾーンID"
  value       = aws_lb.test.zone_id
}
