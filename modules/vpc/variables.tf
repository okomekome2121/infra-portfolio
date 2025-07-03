variable "vpc_id" {
  description = "The ID of an existing VPC."
  type        = string
  default     = null 
}

variable "cidr_block" {
  description = "The CIDR block for the VPC or subnet."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets."
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zones" {
  description = "The availability zone for the subnet."
  type        = string
  default     = null
}

variable "gateway_id" {
  description = "The ID of an Internet Gateway."
  type        = string
  default     = null
}

# variable "name" {
#   description = "Base name to apply to resources, such as Name tags."
#   type        = string
#   default     = null
# }

variable "name_prefix" {
  description = "Prefix added to resource names (e.g., 'dev-', 'prod-')."
  type        = string
  default     = "dev"
}
