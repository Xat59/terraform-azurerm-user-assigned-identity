resource "azurerm_user_assigned_identity" "this" {
  resource_group_name = var.resource_group_name
  location            = var.location

  name = var.identity_name
  tags = var.identity_tags
}

resource "azurerm_role_assignment" "this" {
  scope                = var.role_scope
  role_definition_name = var.role_definition_name
  role_definition_id   = var.role_definition_id
  principal_id         = azurerm_user_assigned_identity.this.principal_id
  description          = var.role_description

  name = var.role_name
}
