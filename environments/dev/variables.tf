variable "region" {
  default = "ap-northeast-1"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["ap-northeast-1a", "ap-northeast-1b", "ap-northeast-1c"]
  
}

variable "cidr_block" {
  type        = string
  description = "VPCのCIDRブロック"   
}

variable "public_subnet_cidrs" {
  description = "CIDR block for the public subnet"
  type        = list(string)
  default     = []
}

variable "plivate_subnet_ids" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
  default     = []
}
