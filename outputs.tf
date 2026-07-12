output "api_management_identity_provider_aadb2cs_allowed_tenant" {
  description = "Map of allowed_tenant values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.allowed_tenant }
}
output "api_management_identity_provider_aadb2cs_api_management_name" {
  description = "Map of api_management_name values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.api_management_name }
}
output "api_management_identity_provider_aadb2cs_authority" {
  description = "Map of authority values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.authority }
}
output "api_management_identity_provider_aadb2cs_client_id" {
  description = "Map of client_id values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_id }
}
output "api_management_identity_provider_aadb2cs_client_library" {
  description = "Map of client_library values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_library }
}
output "api_management_identity_provider_aadb2cs_client_secret" {
  description = "Map of client_secret values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_secret }
  sensitive   = true
}
output "api_management_identity_provider_aadb2cs_password_reset_policy" {
  description = "Map of password_reset_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.password_reset_policy }
}
output "api_management_identity_provider_aadb2cs_profile_editing_policy" {
  description = "Map of profile_editing_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.profile_editing_policy }
}
output "api_management_identity_provider_aadb2cs_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.resource_group_name }
}
output "api_management_identity_provider_aadb2cs_signin_policy" {
  description = "Map of signin_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signin_policy }
}
output "api_management_identity_provider_aadb2cs_signin_tenant" {
  description = "Map of signin_tenant values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signin_tenant }
}
output "api_management_identity_provider_aadb2cs_signup_policy" {
  description = "Map of signup_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signup_policy }
}

