variable "region" {
  default = "ap-northeast-1"
}

variable "name_prefix" {
  type        = string
  default     = "my-vpc"
  description = "リソース名に使うプレフィックス"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "リソースに付与するタグ"
}

variable "enable_deletion_protection" {
  type        = bool
  default     = false
  description = "削除保護の有効化"
}

variable "target_group_protocol" {
  type        = string
  default     = "HTTP"
  description = "ターゲットグループのプロトコル"
}

variable "health_check_path" {
  type        = string
  default     = "/"
  description = "ヘルスチェックのパス"
}

variable "health_check_protocol" {
  type        = string
  default     = "HTTP"
  description = "ヘルスチェックのプロトコル"
}

variable "health_check_matcher" {
  type        = string
  default     = "200"
  description = "ヘルスチェックのマッチャー"
}

variable "health_check_interval" {
  type        = number
  default     = 30
  description = "ヘルスチェックの間隔"
}

variable "health_check_timeout" {
  type        = number
  default     = 5
  description = "ヘルスチェックのタイムアウト"
}

variable "healthy_threshold" {
  type        = number
  default     = 2
  description = "正常判定までの回数"
}

variable "unhealthy_threshold" {
  type        = number
  default     = 2
  description = "異常判定までの回数"
}

variable "listener_port" {
  type        = number
  default     = 80
  description = "リスナーのポート番号"
}

variable "listener_protocol" {
  type        = string
  default     = "HTTP"
  description = "リスナーのプロトコル"
}
