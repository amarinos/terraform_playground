output "testing_message" {
  value = "We are testing our Terraform code!"
}

output "rg_location" {
  value = azurerm_resource_group.anm_rg.location
}

output "storage_redundancy" {
  value = azurerm_storage_account.mystorage.account_replication_type
}