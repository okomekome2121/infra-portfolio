variable "name" {}
variable "internal" {
  default = false
}
variable "security_groups" {
  type = list(string)
}
variable "subnets" {
  type = list(string)
}
variable "target_group_name" {}
variable "target_group_port" {}
variable "vpc_id" {}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "dev"
}
