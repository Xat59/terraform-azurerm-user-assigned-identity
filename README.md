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
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_user_assigned_identity.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_identity_name"></a> [identity\_name](#input\_identity\_name) | (Required) The name of the user assigned identity. Changing this forces a new identity to be created. | `string` | n/a | yes |
| <a name="input_identity_tags"></a> [identity\_tags](#input\_identity\_tags) | A map of tags to add to user assigned identity resource. | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location/region where the user assigned identity is created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the user assigned identity. | `string` | n/a | yes |
| <a name="input_role_definition_id"></a> [role\_definition\_id](#input\_role\_definition\_id) | (Optional) The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`. | `string` | `null` | no |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | (Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`. | `string` | `null` | no |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | (Optional) The description for this Role Assignment. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Optional) A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_role_scope"></a> [role\_scope](#input\_role\_scope) | (Required) The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_assignement"></a> [role\_assignement](#output\_role\_assignement) | A map of user assigned identity properties. |
| <a name="output_user_assigned_identity"></a> [user\_assigned\_identity](#output\_user\_assigned\_identity) | A map of user assigned identity properties. |
