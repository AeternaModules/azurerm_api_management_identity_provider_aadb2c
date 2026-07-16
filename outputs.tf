output "api_management_identity_provider_aadb2cs_id" {
  description = "Map of id values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_management_identity_provider_aadb2cs_allowed_tenant" {
  description = "Map of allowed_tenant values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.allowed_tenant if v.allowed_tenant != null && length(v.allowed_tenant) > 0 }
}
output "api_management_identity_provider_aadb2cs_api_management_name" {
  description = "Map of api_management_name values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.api_management_name if v.api_management_name != null && length(v.api_management_name) > 0 }
}
output "api_management_identity_provider_aadb2cs_authority" {
  description = "Map of authority values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.authority if v.authority != null && length(v.authority) > 0 }
}
output "api_management_identity_provider_aadb2cs_client_id" {
  description = "Map of client_id values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "api_management_identity_provider_aadb2cs_client_library" {
  description = "Map of client_library values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_library if v.client_library != null && length(v.client_library) > 0 }
}
output "api_management_identity_provider_aadb2cs_client_secret" {
  description = "Map of client_secret values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.client_secret if v.client_secret != null && length(v.client_secret) > 0 }
  sensitive   = true
}
output "api_management_identity_provider_aadb2cs_password_reset_policy" {
  description = "Map of password_reset_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.password_reset_policy if v.password_reset_policy != null && length(v.password_reset_policy) > 0 }
}
output "api_management_identity_provider_aadb2cs_profile_editing_policy" {
  description = "Map of profile_editing_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.profile_editing_policy if v.profile_editing_policy != null && length(v.profile_editing_policy) > 0 }
}
output "api_management_identity_provider_aadb2cs_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "api_management_identity_provider_aadb2cs_signin_policy" {
  description = "Map of signin_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signin_policy if v.signin_policy != null && length(v.signin_policy) > 0 }
}
output "api_management_identity_provider_aadb2cs_signin_tenant" {
  description = "Map of signin_tenant values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signin_tenant if v.signin_tenant != null && length(v.signin_tenant) > 0 }
}
output "api_management_identity_provider_aadb2cs_signup_policy" {
  description = "Map of signup_policy values across all api_management_identity_provider_aadb2cs, keyed the same as var.api_management_identity_provider_aadb2cs"
  value       = { for k, v in azurerm_api_management_identity_provider_aadb2c.api_management_identity_provider_aadb2cs : k => v.signup_policy if v.signup_policy != null && length(v.signup_policy) > 0 }
}

