output "vpc_id" {
  value = module.albvpc.vpc_id
}

output "alb_arn" {
  description = "ALBのARN"
  value       = module.alb.aws_lb.main.arn
}

output "alb_zone_id" {
  description = "ALBのゾーンID"
  value       = module.albaws_lb.main.zone_id
}

output "target_group_arn" {
  description = "ターゲットグループのARN"
  value       = module.albaws_lb_target_group.main.arn
}

output "listener_arn" {
  description = "リスナーのARN"
  value       = module.albaws_lb_listener.http.arn
}
