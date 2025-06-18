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
