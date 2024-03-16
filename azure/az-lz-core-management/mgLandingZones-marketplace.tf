# resource "azurerm_management_group" "MarketPlace_Test" {
#   parent_management_group_id = azurerm_management_group.LandingZones_Test.id
#   display_name               = "${var.managment_group_mapping["marketplace"]}_Test"
# }