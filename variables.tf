variable "api_management_identity_provider_aadb2cs" {
  description = <<EOT
Map of api_management_identity_provider_aadb2cs, attributes below
Required:
    - allowed_tenant
    - api_management_name
    - authority
    - client_id
    - client_secret
    - client_secret_key_vault_id (optional, alternative to client_secret)
    - client_secret_key_vault_secret_name (optional, alternative to client_secret)
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
    allowed_tenant                      = string
    api_management_name                 = string
    authority                           = string
    client_id                           = string
    client_secret                       = string
    client_secret_key_vault_id          = optional(string)
    client_secret_key_vault_secret_name = optional(string)
    resource_group_name                 = string
    signin_policy                       = string
    signin_tenant                       = string
    signup_policy                       = string
    client_library                      = optional(string)
    password_reset_policy               = optional(string)
    profile_editing_policy              = optional(string)
  }))
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
  # path: client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: client_secret
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: allowed_tenant
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: signin_tenant
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: authority
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: signup_policy
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: signin_policy
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: client_library
  #   condition: length(value) >= 0 && length(value) <= 16
  #   message:   must be between 0 and 16 characters
  # path: profile_editing_policy
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password_reset_policy
  #   condition: length(value) > 0
  #   message:   must not be empty
}

