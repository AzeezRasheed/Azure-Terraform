//Landing Zones Management group
resource "azurerm_management_group" "LandingZones_Test" {
  parent_management_group_id = var.mg_cei_lz_Test_id
  display_name               = "${var.managment_group_mapping["landingzones"]}_Test"
}