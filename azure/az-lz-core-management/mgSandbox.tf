resource "azurerm_subscription" "subCEIDev_Test" {
  subscription_name = "CEI_DEV_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subIBTSandbox_Test" {
  subscription_name = "IBTSandbox_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = {
    "Environment" = "POC"
  }
}

//Sandbox Management group
resource "azurerm_management_group" "Sandbox_Test" {
  parent_management_group_id = var.mg_cei_lz_Test_id
  display_name               = "${var.managment_group_mapping["sandbox"]}_Test"

  subscription_ids = [
    azurerm_subscription.subCEIDev_Test.subscription_id,
    azurerm_subscription.subIBTSandbox_Test.subscription_id
  ]
}
