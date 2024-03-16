resource "time_static" "current" {}

locals {
  resource_tags = {
    BuildDate  = formatdate("YYYY/MM/DD hh:mm:ss", time_static.current.rfc3339)
    Managed    = "terraform"
    ProjectCode = ""
  }

  tags = merge(var.rg_tags, local.resource_tags)

  env_mapping = {
    "dev"     = "d"
    "sit"     = "s"
    "uat"     = "u"
    "qa"      = "qa"
    "nonprod" = "n"
    "prod"    = "p"
  }

  region_mapping = {
    "eastus2" = "easu2"
  }

  subscription_alias = {
    "LZ_EXTERNAL_NONPROD" = "exnp"
    "LZ_EXTERNAL_PROD"    = "exp"
  }
}
