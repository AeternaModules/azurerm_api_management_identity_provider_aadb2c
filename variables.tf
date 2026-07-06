variable "api_management_identity_provider_aadb2cs" {
  description = <<EOT
Map of api_management_identity_provider_aadb2cs, attributes below
Required:
    - allowed_tenant
    - api_management_name
    - authority
    - client_id
    - client_secret
    - resource_group_name
    - signin_policy
    - signin_tenant
    - signup_policy
Optional:
    - client_library
    - password_reset_policy
    - profile_editing_policy
EOT

  type = map(object({
    allowed_tenant         = string
    api_management_name    = string
    authority              = string
    client_id              = string
    client_secret          = string
    resource_group_name    = string
    signin_policy          = string
    signin_tenant          = string
    signup_policy          = string
    client_library         = optional(string)
    password_reset_policy  = optional(string)
    profile_editing_policy = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.client_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.client_secret) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.allowed_tenant) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.signin_tenant) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.authority) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.signup_policy) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        length(v.signin_policy) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        v.client_library == null || (length(v.client_library) >= 0 && length(v.client_library) <= 16)
      )
    ])
    error_message = "must be between 0 and 16 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        v.profile_editing_policy == null || (length(v.profile_editing_policy) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_identity_provider_aadb2cs : (
        v.password_reset_policy == null || (length(v.password_reset_policy) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_identity_provider_aadb2c's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: api_management_name
  #   source:    [from validate.ApiManagementServiceName] !matched
}

