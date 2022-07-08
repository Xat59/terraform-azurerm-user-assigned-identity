locals {
  principal_id = var.create_identity ? azurerm_user_assigned_identity.this.0.principal_id : var.role_principal_id
}

resource "azurerm_user_assigned_identity" "this" {
  count = var.create_identity ? 1 : 0

  resource_group_name = var.resource_group_name
  location            = var.location

  name = var.identity_name
  tags = var.identity_tags
}

resource "azurerm_role_assignment" "this" {
  scope                = var.role_scope
  role_definition_name = var.role_definition_name
  role_definition_id   = var.role_definition_id
  principal_id         = local.principal_id
  description          = var.role_description

  name = var.role_name
}
