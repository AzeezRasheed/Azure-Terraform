resource "azurerm_app_service_plan" "asp" {
  name                = var.asp_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  kind                       = var.kind
  app_service_environment_id = var.app_service_environment_id

  sku {
    tier     = var.asp_sku.tier
    size     = var.asp_sku.size
    capacity = var.asp_sku.capacity
  }

  tags = var.tags
}
