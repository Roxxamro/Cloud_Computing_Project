output "resource_group_name" {
  description = "Resource group name is"
  value       = azurerm_resource_group.resource_group.name
}
output "resource_group_id" {
  description = "Resource group ID is :"
  value       = azurerm_resource_group.resource_group.id
}
output "physical_location" {
  description = "Resource group location is :"
  value       = azurerm_resource_group.resource_group.location
}
output "success_message_rg" {
  value = "The resource group has been created successfully. Enjoy!"
}