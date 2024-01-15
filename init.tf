terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "= 3.27.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "anm_rg" {
  name     = "TerraformRG"
  location = "westeurope"
}