output "hello_world" {
  value = "Hello, World!"
}

output "rg_location" {
  value = azurerm_resource_group.anm_rg.location
}

output "storage_redundancy" {
  value = azurerm_storage_account.mystorage.account_replication_type
}