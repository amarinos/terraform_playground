variable "storage_prefix" {
  type = string
}
resource "azurerm_storage_account" "mystorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = azurerm_resource_group.anm_rg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  public_network_access_enabled = var.storage_account_public_network_access_enabled
  allow_nested_items_to_be_public = var.storage_account_allow_nested_items_to_be_public

  tags = {
    environment = "staging"
  }
}