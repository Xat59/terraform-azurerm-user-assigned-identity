locals {
  test = "yr"
  roles = [ for r in var.roles: { for p in r.principal_id: p => { name = try(r.name, null), scope = r.scope,definition_name = try(r.definition_name, null), definition_id = try(r.definition_id, null), description = try(r.description, null) }}]
}

resource "azurerm_user_assigned_identity" "this" {
  for_each = var.identities

  resource_group_name = var.resource_group_name
  location            = var.location

  name = each.value.name
  tags = each.value.tags
}

resource "azurerm_role_assignment" "this" {
  for_each = local.roles

  scope           = each.value.scope
  definition_name = each.value.definition_name
  definition_id   = each.value.definition_id
  principal_id    = each.key
  description     = each.value.description

  name = each.value.name
}
