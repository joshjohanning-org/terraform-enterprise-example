# azdo-terraform-tailspin

Sample terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.99.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service.app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service) | resource |
| [azurerm_app_service_plan.asp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subscription.primary](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ARM_CLIENT_ID"></a> [ARM\_CLIENT\_ID](#input\_ARM\_CLIENT\_ID) | database server name | `any` | n/a | yes |
| <a name="input_ARM_CLIENT_SECRET"></a> [ARM\_CLIENT\_SECRET](#input\_ARM\_CLIENT\_SECRET) | database server name | `any` | n/a | yes |
| <a name="input_ARM_SUBSCRIPTION_ID"></a> [ARM\_SUBSCRIPTION\_ID](#input\_ARM\_SUBSCRIPTION\_ID) | database server name | `any` | n/a | yes |
| <a name="input_ARM_TENANT_ID"></a> [ARM\_TENANT\_ID](#input\_ARM\_TENANT\_ID) | database server name | `any` | n/a | yes |
| <a name="input_app_service"></a> [app\_service](#input\_app\_service) | The app service to create that uses the app service plan | `any` | n/a | yes |
| <a name="input_app_service_plan"></a> [app\_service\_plan](#input\_app\_service\_plan) | The app service plan to create | `any` | n/a | yes |
| <a name="input_app_service_slot"></a> [app\_service\_slot](#input\_app\_service\_slot) | The swap slot to create | `any` | n/a | yes |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | database server name | `any` | n/a | yes |
| <a name="input_database_server_name"></a> [database\_server\_name](#input\_database\_server\_name) | database server name | `any` | n/a | yes |
| <a name="input_key_vault"></a> [key\_vault](#input\_key\_vault) | The key vault to create to store app secrets | `any` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The Azure location where all resources in this example should be created | `any` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group name | `any` | n/a | yes |
| <a name="input_kv_service_principals"></a> [kv\_service\_principals](#input\_kv\_service\_principals) | objects to add to key vault access policy | `map` | <pre>{<br>  "azdo-spn": {<br>    "object_id": "4ded4b3b-26a7-4ea4-a166-d33f49d8a0d3"<br>  },<br>  "my-spn": {<br>    "object_id": "dfd708fe-1a12-48ee-9784-26933e4d7f14"<br>  }<br>}</pre> | no |
| <a name="input_sql_firewall_rules"></a> [sql\_firewall\_rules](#input\_sql\_firewall\_rules) | the sql firewall rules to add to db server | `map` | <pre>{<br>  "AllowAllWindowsAzureIps": {<br>    "ip": "0.0.0.0"<br>  }<br>}</pre> | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Pre-Commit Hooks

Enable pre-commit hooks by installing

- [pre-commit](https://pre-commit.com/#install)
- [tflint](https://github.com/terraform-linters/tflint#installation)
- [tflint-ruleset-azurerm](https://github.com/terraform-linters/tflint-ruleset-azurerm#installation)
- [tfsec](https://github.com/tfsec/tfsec#installation)
- [terraform-docs](https://terraform-docs.io/user-guide/installation/)

Then run: `pre-commit install` from the root of the repo.
