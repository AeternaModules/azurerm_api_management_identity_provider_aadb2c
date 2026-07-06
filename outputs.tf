output "api_management_identity_provider_aadb2cs" {
  description = "All api_management_identity_provider_aadb2c resources"
  value       = azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs
  sensitive   = true
}
output "api_management_identity_provider_aadb2cs_allowed_tenant" {
  description = "List of allowed_tenant values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.allowed_tenant]
}
output "api_management_identity_provider_aadb2cs_api_management_name" {
  description = "List of api_management_name values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.api_management_name]
}
output "api_management_identity_provider_aadb2cs_authority" {
  description = "List of authority values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.authority]
}
output "api_management_identity_provider_aadb2cs_client_id" {
  description = "List of client_id values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.client_id]
}
output "api_management_identity_provider_aadb2cs_client_library" {
  description = "List of client_library values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.client_library]
}
output "api_management_identity_provider_aadb2cs_client_secret" {
  description = "List of client_secret values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.client_secret]
  sensitive   = true
}
output "api_management_identity_provider_aadb2cs_password_reset_policy" {
  description = "List of password_reset_policy values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.password_reset_policy]
}
output "api_management_identity_provider_aadb2cs_profile_editing_policy" {
  description = "List of profile_editing_policy values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.profile_editing_policy]
}
output "api_management_identity_provider_aadb2cs_resource_group_name" {
  description = "List of resource_group_name values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.resource_group_name]
}
output "api_management_identity_provider_aadb2cs_signin_policy" {
  description = "List of signin_policy values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.signin_policy]
}
output "api_management_identity_provider_aadb2cs_signin_tenant" {
  description = "List of signin_tenant values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.signin_tenant]
}
output "api_management_identity_provider_aadb2cs_signup_policy" {
  description = "List of signup_policy values across all api_management_identity_provider_aadb2cs"
  value       = [for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : v.signup_policy]
}

