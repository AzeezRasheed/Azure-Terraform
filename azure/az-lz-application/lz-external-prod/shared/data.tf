data "terraform_remote_state" "networking-lz-external-prod" {
  backend = "azurerm"

  config = {
    subscription_id      = "6e4cc0c4-aa0e-442d-bc28-14011e31f700"
    resource_group_name  = "Automation"
    storage_account_name = "ceishellstorage"
    container_name       = "networking-state"
    key                  = "lz-external-prod/terraform.tfstate"
  }
}

data "azurerm_client_config" "current" {}