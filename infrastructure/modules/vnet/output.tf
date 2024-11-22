output "vnet_name" {
  description = "Nom du réseau virtuel"
  value       = azurerm_virtual_network.vnet.name
}
output "subnet_name" {
  description = "Nom du sous-réseau"
  value       = azurerm_subnet.subnet.name
}
output "my_subnet_id" {
  description = "ID du sous-réseau"
  value       = azurerm_subnet.subnet.id
}
output "vnet_id" {
  description = "Virtual network ID"
  value       = azurerm_virtual_network.vnet.id
}
output "success_message_vnet" {
  value = "Le réseau virtuel et les sous-réseaux ont été créés avec succès"
}