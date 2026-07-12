data "azurerm_key_vault_secret" "client_secret" {
  for_each     = { for k, v in var.api_management_identity_provider_aadb2cs : k => v if v.client_secret_key_vault_id != null && v.client_secret_key_vault_secret_name != null }
  name         = each.value.client_secret_key_vault_secret_name
  key_vault_id = each.value.client_secret_key_vault_id
}
resource "azurerm_api_management_identity_provider_aadb2c" "api_management_identity_provider_aadb2cs" {
  for_each = var.api_management_identity_provider_aadb2cs

  allowed_tenant         = each.value.allowed_tenant
  api_management_name    = each.value.api_management_name
  authority              = each.value.authority
  client_id              = each.value.client_id
  client_secret          = each.value.client_secret != null ? each.value.client_secret : try(data.azurerm_key_vault_secret.client_secret[each.key].value, null)
  resource_group_name    = each.value.resource_group_name
  signin_policy          = each.value.signin_policy
  signin_tenant          = each.value.signin_tenant
  signup_policy          = each.value.signup_policy
  client_library         = each.value.client_library
  password_reset_policy  = each.value.password_reset_policy
  profile_editing_policy = each.value.profile_editing_policy
}

