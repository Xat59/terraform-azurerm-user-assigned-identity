# Global variables
####
variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the user assigned identity."
  type        = string
}

variable "location" {
  description = "(Required) The location/region where the user assigned identity is created."
  type        = string
}

# User identity variables
####
variable "create_identity" {
  description = "(Optional) Whether to create identity."
  type        = bool
  default     = true
}

variable "identity_name" {
  description = "(Optional) The name of the user assigned identity. Changing this forces a new identity to be created."
  type        = string
  default     = null
}

variable "identity_tags" {
  description = "A map of tags to add to user assigned identity resource."
  type        = map(string)
  default     = {}
}

# Role assignment variables
####

variable "role_name" {
  description = "(Optional) A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "role_scope" {
  description = "(Required) The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created."
  type        = string
}

variable "role_definition_id" {
  description = "(Optional) The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`."
  type        = string
  default     = null
}

variable "role_definition_name" {
  description = "(Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`."
  type        = string
  default     = null
}

variable "role_description" {
  description = "(Optional) The description for this Role Assignment. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "role_principal_id" {
  description = "(Optional) The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. If not specified, then it automatically assign the role to the created identity. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
