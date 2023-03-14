# subvend

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_management_group_subscription_association.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_subscription_association) | resource |
| [azurerm_subscription.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subscription) | resource |
| [azurerm_billing_enrollment_account_scope.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/billing_enrollment_account_scope) | data source |
| [azurerm_subscription.newsubscription](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_name"></a> [billing\_account\_name](#input\_billing\_account\_name) | billing\_account\_name for EA | `string` | `"69793823"` | no |
| <a name="input_deploy_default_resources"></a> [deploy\_default\_resources](#input\_deploy\_default\_resources) | Deploy default resources? | `bool` | `false` | no |
| <a name="input_enable_management_group_association"></a> [enable\_management\_group\_association](#input\_enable\_management\_group\_association) | n/a | `bool` | `false` | no |
| <a name="input_enrollment_account_name"></a> [enrollment\_account\_name](#input\_enrollment\_account\_name) | enrollment\_account\_name for EA | `string` | `"286557"` | no |
| <a name="input_is_arc_enabled"></a> [is\_arc\_enabled](#input\_is\_arc\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_is_avs_enabled"></a> [is\_avs\_enabled](#input\_is\_avs\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_is_connectivity_sub"></a> [is\_connectivity\_sub](#input\_is\_connectivity\_sub) | Is this subscription used as a connectivity subscription? | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | n/a | `number` | n/a | yes |
| <a name="input_management_group_id"></a> [management\_group\_id](#input\_management\_group\_id) | ID of the parent management group this subscription will be added under | `string` | `"mg-wpp-lz-opgroup-01"` | no |
| <a name="input_subscription_name"></a> [subscription\_name](#input\_subscription\_name) | name of subscription | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_connectivitysubid"></a> [connectivitysubid](#output\_connectivitysubid) | n/a |
| <a name="output_key"></a> [key](#output\_key) | n/a |
| <a name="output_location_placement_id"></a> [location\_placement\_id](#output\_location\_placement\_id) | This should be the management group ID of where the subscription has been associated |
| <a name="output_management_group_id"></a> [management\_group\_id](#output\_management\_group\_id) | This was the management group ID passed in and should match location\_placement\_id? |
| <a name="output_subscription_id"></a> [subscription\_id](#output\_subscription\_id) | n/a |
| <a name="output_subscription_name"></a> [subscription\_name](#output\_subscription\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
