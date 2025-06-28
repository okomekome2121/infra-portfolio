output "alb_name" {
  description = "ALBのNAME"
  value       = aws_lb.main.arn
}

output "alb_arn" {
  description = "ALBのARN"
  value       = aws_lb.main.arn
}

output "alb_zone_id" {
  description = "ALBのゾーンID"
  value       = aws_lb.main.zone_id
}

output "target_group_arn" {
  description = "ターゲットグループのARN"
  value       = aws_lb_target_group.main.arn
}

output "listener_arn" {
  description = "リスナーのARN"
  value       = aws_lb_listener.http.arn
}
