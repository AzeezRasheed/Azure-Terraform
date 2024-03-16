resource "azurerm_subscription" "subCCPA_Test" {
  subscription_name = "CEI_CCPA_External_Websistes_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subCEIDevelopment_Test" {
  subscription_name = "CEI_Development_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subEnterprise_Test" {
  subscription_name = "Enterprise_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subHDChatbotProd_Test" {
  subscription_name = "HD_Chatbot_PROD_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subLZExternalNProd_Test" {
  subscription_name = "LZ_External_NonPROD_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subLZExternalProd_Test" {
  subscription_name = "LZ_External_PROD_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subRPA_Test" {
  subscription_name = "RPA_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_management_group" "External_Test" {
  parent_management_group_id = azurerm_management_group.LandingZones_Test.id
  display_name               = "${var.managment_group_mapping["external"]}_Test"

  subscription_ids = [
    azurerm_subscription.subCCPA_Test.subscription_id,
    azurerm_subscription.subCEIDevelopment_Test.subscription_id,
    azurerm_subscription.subEnterprise_Test.subscription_id,
    azurerm_subscription.subHDChatbotProd_Test.subscription_id,
    azurerm_subscription.subLZExternalNProd_Test.subscription_id,
    azurerm_subscription.subLZExternalProd_Test.subscription_id,
    azurerm_subscription.subRPA_Test.subscription_id
  ]
}

