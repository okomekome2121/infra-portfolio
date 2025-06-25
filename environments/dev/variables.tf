variable "region" {
  default = "ap-northeast-1"
}

variable "name_prefix" {
  type        = string
  default     = "my-vpc"
  description = "リソース名に使うプレフィックス"
}
