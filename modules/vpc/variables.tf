variable "vpc_id" {
  type = string
  description = "id for the VPC"
  default     = null  # ← 必須にしないならdefaultを設定
}

variable "gateway_id" {
  type = string
  description = "id for the Internet Gateway"
  default     = null
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "name_prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "dev"
}

