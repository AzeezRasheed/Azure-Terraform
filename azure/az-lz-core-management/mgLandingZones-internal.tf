resource "azurerm_subscription" "subAnalytics_Test" {
  subscription_name = "Analytics_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subLZInternalNonProd_Test" {
  subscription_name = "LZ_Internal_NonPROD_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subLZInternalProd_Test" {
  subscription_name = "LZ_Internal_PROD_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_management_group" "Internal_Test" {
  parent_management_group_id = azurerm_management_group.LandingZones_Test.id
  display_name               = "${var.managment_group_mapping["internal"]}_Test"

  subscription_ids = [
    azurerm_subscription.subAnalytics_Test.subscription_id,
    azurerm_subscription.subLZInternalNonProd_Test.subscription_id,
    azurerm_subscription.subLZInternalProd_Test.subscription_id
  ]
}

