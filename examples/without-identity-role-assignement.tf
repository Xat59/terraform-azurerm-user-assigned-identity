module "identity" {
  source = "github.com/Xat59/terraform-azurerm-user-assigned-identity.git?ref=v0.2.0"

  location            = resource_group.location
  resource_group_name = resource_group.id
  
  create_identity      = false
  role_scope           = "/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333"
  role_definition_name = "Virtual Machine Operator"
  role_principal_id    = "48031b6e-1bad-4ba0-bb2d-955609fcaf2e"
}
