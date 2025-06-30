variable "alb_name" {
  description = "The name of the ALB (used for Name tags and identification)."
  type        = string
}

variable "internal" {
  description = "Whether the ALB is internal (true = private/internal ALB)."
  type        = bool
  default     = false
}

variable "subnet_ids" {
  description = "List of subnet IDs where the ALB will be deployed."
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to the ALB."
  type        = list(string)
}

variable "enable_deletion_protection" {
  description = "Enables deletion protection for the ALB (prevents accidental deletion)."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Common tags to apply to all ALB-related resources."
  type        = map(string)
}

variable "vpc_id" {
  description = "The ID of the VPC used to create the target group."
  type        = string
  default     = null
}

variable "target_group_name" {
  description = "The name of the target group."
  type        = string
}

variable "target_group_port" {
  description = "The port number to use for the target group (e.g., 80)."
  type        = number
}

variable "target_group_protocol" {
  description = "The protocol to use for the target group (e.g., HTTP or HTTPS)."
  type        = string
}

variable "health_check_protocol" {
  description = "The protocol to use for health checks (e.g., HTTP)."
  type        = string
}

variable "health_check_path" {
  description = "The path used for health checks (e.g., /health)."
  type        = string
}
