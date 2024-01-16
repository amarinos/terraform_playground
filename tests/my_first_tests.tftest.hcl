variables {
  storage_prefix = "test"
}

# you can give your run any name, does not need to be unit_test
run "unit_test" {

  command = plan

  assert {
    condition     = lower(azurerm_storage_account.mystorage.name) == azurerm_storage_account.mystorage.name
    error_message = "Storage account name did not match expected"
  }

    assert {
    condition     = azurerm_storage_account.mystorage.account_replication_type != "RAGRS"
    error_message = "Storage account shredundancy should not be Read-Access geo redundant"
  }

}

run "integration_test" {

  command = apply

  assert {
    condition     = azurerm_storage_account.mystorage.access_tier == "Hot"
    error_message = "Default access tier should be Hot"
  }

}