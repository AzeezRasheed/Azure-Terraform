variable "asp_name" {
  description = "Specifies the name of the App Service Plan component."
  type        = string
}

variable "rg_location" {
  description = "Specifies the supported Azure location where the resource exists"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group in which to create the App Service Plan component"
  type        = string
}

variable "kind" {
  description = "The kind of the App Service Plan to create"
  type        = string
  default     = "Windows"
}

variable "app_service_environment_id" {
  description = "The ID of the App Service Environment where the App Service Plan should be located."
  type        = string
}

variable "asp_sku" {
  description = "SKU of the App Service Plan"
  type        = map(string)
  default = {
    "tier"     = "IsolatedV2"
    "size"     = "I1v2"
    "capacity" = 1
  }
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
