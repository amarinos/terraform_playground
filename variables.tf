
variable "resource_group_name" {
  type = string
}
variable "resource_group_location" {
  type = string
  default = "westeurope"
}

variable "storage_account_name" {
  type = string
}

variable "storage_account_tier" {
  type = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type = string
  default = "GRS"
}

variable "storage_account_public_network_access_enabled" {
  type = bool
  default = false
}

variable "storage_account_allow_nested_items_to_be_public" {
  type = bool
  default = false
}