provider "azurerm" {
  features {}
  subscription_id = "6e4cc0c4-aa0e-442d-bc28-14011e31f700"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.96.0"
    }
  }
  required_version = "= 1.0.0"

  backend "azurerm" {
    subscription_id      = "6e4cc0c4-aa0e-442d-bc28-14011e31f700"
    resource_group_name  = "Automation"
    storage_account_name = "ceishellstorage"
    container_name       = "management-state"
    key                  = "terraform.tfstate"
  }
}
