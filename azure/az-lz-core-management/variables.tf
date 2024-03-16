variable "managment_group_mapping" {
  type = map
  default = {
    "cei"                  = "CEI"
    "sharedinfrastructure" = "SharedInfrastructure"
    "connectivity"         = "mgConnectivity"
    "identity"             = "mgIdentity"
    "management"           = "mgManagement"
    "landingzones"         = "LandingZones"
    "external"             = "External"
    "internal"             = "Internal"
    "marketplace"          = "MarketPlace"
    "sandbox"              = "Sandbox"
  }
}

variable "mg_cei_lz_Test_id" {
  type    = string
  default = "/providers/Microsoft.Management/managementGroups/CEI_LZ_Test"
}

variable "tags" {
  description = "Non PROD Tagging"
  type        = map
  default = {
    "Environment" = "DEV"
  }
}