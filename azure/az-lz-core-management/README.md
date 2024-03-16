<!-- BEGIN_TF_DOCS -->

# az-lz-core-management
<!-- Add content to .config/terraform-docs-header.md if you need to append text at the beginning of README.md -->

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 0.13.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | 2.96.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | 2.96.0 |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [azurerm_management_group.External_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.Internal_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.LandingZones_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.MarketPlace_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.Sandbox_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.SharedInfrastructure_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.mgConnectivity_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.mgIdentity_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_management_group.mgManagement_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/management_group) | resource |
| [azurerm_subscription.subAnalytics_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subCCPA_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subCEIDev_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subCEIDevelopment_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subConnectivity_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subEnterprise_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subHDChatbotProd_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subIBTSandbox_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subIdentity_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subLZExternalNProd_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subLZExternalProd_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subLZInternalNonProd_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subLZInternalProd_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subManagement_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_subscription.subRPA_Test](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.cei_billing_ea_scope](https://registry.terraform.io/providers/hashicorp/azurerm/2.96.0/docs/data-sources/billing_enrollment_account_scope) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managment_group_mapping"></a> [managment_group_mapping](#input_managment_group_mapping) | n/a | `map` | <pre>{<br>  "cei": "CEI",<br>  "connectivity": "mgConnectivity",<br>  "external": "External",<br>  "identity": "mgIdentity",<br>  "internal": "Internal",<br>  "landingzones": "LandingZones",<br>  "management": "mgManagement",<br>  "marketplace": "MarketPlace",<br>  "sandbox": "Sandbox",<br>  "sharedinfrastructure": "SharedInfrastructure"<br>}</pre> | no |
| <a name="input_mg_cei_lz_Test_id"></a> [mg_cei_lz_Test_id](#input_mg_cei_lz_Test_id) | n/a | `string` | `"/providers/Microsoft.Management/managementGroups/CEI_LZ_Test"` | no |
| <a name="input_tags"></a> [tags](#input_tags) | Non PROD Tagging | `map` | <pre>{<br>  "Environment": "DEV",<br>  "Sandbox": "POC"<br>}</pre> | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_mg_connectivity_Test"></a> [mg_connectivity_Test](#output_mg_connectivity_Test) | Information of mg_connectivity_Test management group |
| <a name="output_mg_external_Test"></a> [mg_external_Test](#output_mg_external_Test) | Information of mg_external_Test management group |
| <a name="output_mg_identity_Test"></a> [mg_identity_Test](#output_mg_identity_Test) | Information of mg_identity_Test management group |
| <a name="output_mg_internal_Test"></a> [mg_internal_Test](#output_mg_internal_Test) | Information of mg_internal_Test management group |
| <a name="output_mg_landingzones_Test"></a> [mg_landingzones_Test](#output_mg_landingzones_Test) | Information of mg_landingzones_Test management group |
| <a name="output_mg_management_Test"></a> [mg_management_Test](#output_mg_management_Test) | Information of mg_management_Test management group |
| <a name="output_mg_marketplace_Test"></a> [mg_marketplace_Test](#output_mg_marketplace_Test) | Information of mg_marketplace_Test management group |
| <a name="output_mg_sandbox_Test"></a> [mg_sandbox_Test](#output_mg_sandbox_Test) | Information of mg_sandbox_Test management group |
| <a name="output_mg_sharedinfrastructure_Test"></a> [mg_sharedinfrastructure_Test](#output_mg_sharedinfrastructure_Test) | Information of mg_sharedinfrastructure_Test management group |
| <a name="output_subAnalytics_Test"></a> [subAnalytics_Test](#output_subAnalytics_Test) | Information of subAnalytics_Test subscription |
| <a name="output_subCCPA_Test"></a> [subCCPA_Test](#output_subCCPA_Test) | Information of subCCPA_Test subscription |
| <a name="output_subCEIDev_Test"></a> [subCEIDev_Test](#output_subCEIDev_Test) | Information of subCEIDev_Test subscription |
| <a name="output_subCEIDevelopment_Test"></a> [subCEIDevelopment_Test](#output_subCEIDevelopment_Test) | Information of subCEIDevelopment_Test subscription |
| <a name="output_subConnectivity_Test"></a> [subConnectivity_Test](#output_subConnectivity_Test) | Information of subConnectivity_Test subscription |
| <a name="output_subEnterprise_Test"></a> [subEnterprise_Test](#output_subEnterprise_Test) | Information of subEnterprise_Test subscription |
| <a name="output_subHDChatbotProd_Test"></a> [subHDChatbotProd_Test](#output_subHDChatbotProd_Test) | Information of subHDChatbotProd_Test subscription |
| <a name="output_subIBTSandbox_Test"></a> [subIBTSandbox_Test](#output_subIBTSandbox_Test) | Information of subIBTSandbox_Test subscription |
| <a name="output_subIdentity_Test"></a> [subIdentity_Test](#output_subIdentity_Test) | Information of subIdentity_Test subscription |
| <a name="output_subLZExternalNProd_Test"></a> [subLZExternalNProd_Test](#output_subLZExternalNProd_Test) | Information of subLZExternalNProd_Test subscription |
| <a name="output_subLZExternalProd_Test"></a> [subLZExternalProd_Test](#output_subLZExternalProd_Test) | Information of subLZExternalProd_Test subscription |
| <a name="output_subLZInternalNonProd_Test"></a> [subLZInternalNonProd_Test](#output_subLZInternalNonProd_Test) | Information of subLZInternalNonProd_Test subscription |
| <a name="output_subLZInternalProd_Test"></a> [subLZInternalProd_Test](#output_subLZInternalProd_Test) | Information of subLZInternalProd_Test subscription |
| <a name="output_subManagement_Test"></a> [subManagement_Test](#output_subManagement_Test) | Information of subManagement_Test subscription |
| <a name="output_subRPA_Test"></a> [subRPA_Test](#output_subRPA_Test) | Information of subRPA_Test subscription |

<!-- Add content to .config/terraform-docs-footer.md if you need to append text at the end of README.md -->
<br/>

<!-- END_TF_DOCS -->