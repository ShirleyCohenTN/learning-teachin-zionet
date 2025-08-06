variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "capacity" {
  type    = number
  default = 0
}

variable "family" {
  type    = string
  default = "C"
}

variable "sku_name" {
  type    = string
  default = "Basic"
}

variable "shard_count" {
  type    = number
  default = 0
}

variable "allowed_subnet" {
  type    = string
  default = null
}
