variable "region" {
  default = "ap-northeast-1"
}

# variable "cidr_block" {
#   type        = string
# }

# variable "vpc_name" {
#   type        = string
#   description = "VPCの名前"
# }

variable "name_prefix" {
  type        = string
  default     = "my-vpc"
  description = "リソース名に使うプレフィックス"
}

# variable "tags" {
#   description = "Tags to apply to resources"
#   type        = map(string)
#   default     = {
#     "Environment" = "dev"
#   }
# }
