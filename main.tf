variable "storage_prefix" {
  type = string
}
resource "azurerm_storage_account" "mystorage" {
  name                     = "${var.storage_prefix}myanmfstorageaccount"
  resource_group_name      = azurerm_resource_group.anm_rg.name
  location                 = azurerm_resource_group.anm_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false
  allow_nested_items_to_be_public = false

  tags = {
    environment = "staging"
  }
}