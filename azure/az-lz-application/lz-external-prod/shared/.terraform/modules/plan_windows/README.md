<!-- BEGIN_TF_DOCS -->

# az-app-service-plan-mod
<!-- Add content to .config/terraform-docs-header.md if you need to append text at the beginning of README.md -->

#### Requirements

No requirements.

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | n/a |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [azurerm_app_service_plan.asp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_environment_id"></a> [app_service_environment_id](#input_app_service_environment_id) | The ID of the App Service Environment where the App Service Plan should be located. | `string` | n/a | yes |
| <a name="input_asp_name"></a> [asp_name](#input_asp_name) | Specifies the name of the App Service Plan component. | `string` | n/a | yes |
| <a name="input_rg_location"></a> [rg_location](#input_rg_location) | Specifies the supported Azure location where the resource exists | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg_name](#input_rg_name) | The name of the resource group in which to create the App Service Plan component | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input_tags) | A mapping of tags to assign to the resource. | `map(string)` | n/a | yes |
| <a name="input_asp_sku"></a> [asp_sku](#input_asp_sku) | SKU of the App Service Plan | `map(string)` | <pre>{<br>  "capacity": 1,<br>  "size": "I1v2",<br>  "tier": "IsolatedV2"<br>}</pre> | no |
| <a name="input_kind"></a> [kind](#input_kind) | The kind of the App Service Plan to create | `string` | `"Windows"` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_asp_id"></a> [asp_id](#output_asp_id) | App Service Plan ID |

<!-- Add content to .config/terraform-docs-footer.md if you need to append text at the end of README.md -->
<br/>

<!-- END_TF_DOCS -->