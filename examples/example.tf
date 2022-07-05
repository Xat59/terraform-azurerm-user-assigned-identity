module "identity" {
  source = "github.com/Xat59/terraform-azurerm-user-assigned-identity.git?ref=0.1.0"

  location            = resource_group.location
  resource_group_name = resource_group.id
  
  identity_name        = "id-xxx"
  role_scope           = "/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
  role_definition_name = "Virtual Machine Operator"
}
