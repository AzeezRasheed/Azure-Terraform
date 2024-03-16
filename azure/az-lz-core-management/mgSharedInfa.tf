resource "azurerm_subscription" "subConnectivity_Test" {
  subscription_name = "Connectivity_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subIdentity_Test" {
  subscription_name = "Identity_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

resource "azurerm_subscription" "subManagement_Test" {
  subscription_name = "Management_Test"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.cei_billing_ea_scope.id

  tags = var.tags
}

//SharedInfrastructure Management Group
resource "azurerm_management_group" "SharedInfrastructure_Test" {
  parent_management_group_id = var.mg_cei_lz_Test_id
  display_name               = "${var.managment_group_mapping["sharedinfrastructure"]}_Test"
}

resource "azurerm_management_group" "mgConnectivity_Test" {
  parent_management_group_id = azurerm_management_group.SharedInfrastructure_Test.id
  display_name               = "${var.managment_group_mapping["connectivity"]}_Test"

  subscription_ids = [
    azurerm_subscription.subConnectivity_Test.subscription_id
  ]
}

resource "azurerm_management_group" "mgIdentity_Test" {
  parent_management_group_id = azurerm_management_group.SharedInfrastructure_Test.id
  display_name               = "${var.managment_group_mapping["identity"]}_Test"

  subscription_ids = [
    azurerm_subscription.subIdentity_Test.subscription_id
  ]
}

resource "azurerm_management_group" "mgManagement_Test" {
  parent_management_group_id = azurerm_management_group.SharedInfrastructure_Test.id
  display_name               = "${var.managment_group_mapping["management"]}_Test"

  subscription_ids = [
    azurerm_subscription.subManagement_Test.subscription_id
  ]
}