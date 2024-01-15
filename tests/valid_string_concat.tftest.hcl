# valid_string_concat.tftest.hcl

variables {
  storage_prefix = "test"
}

run "unit_test" {

  command = plan

  assert {
    condition     = lower(azurerm_storage_account.mystorage.name) == azurerm_storage_account.mystorage.name
    error_message = "Storage account name did not match expected"
  }

}


run "integration_test" {

  command = apply

  assert {
    condition     = azurerm_storage_account.mystorage.name == "mystorage"
    error_message = "Storage account name did not match expected"
  }

}
