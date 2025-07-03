variable "region" {
  default = "ap-northeast-1"
}

variable "cidr_block" {
  type        = string
  description = "VPCのCIDRブロック"   
}
