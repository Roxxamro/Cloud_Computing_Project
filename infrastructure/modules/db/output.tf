# Output pour le nom du serveur PostgreSQL flexible
output "postgresql_server_name" {
  description = "Le nom du serveur PostgreSQL flexible."
  value       = azurerm_postgresql_flexible_server.my_postgresql_server.name
}
# Output pour l'ID du serveur PostgreSQL flexible
output "postgresql_server_id" {
  description = "L'ID du serveur PostgreSQL flexible."
  value       = azurerm_postgresql_flexible_server.my_postgresql_server.id
}
# Output pour l'URL du serveur PostgreSQL
output "postgresql_server_url" {
  description = "L'URL du serveur PostgreSQL (utilisé pour se connecter)."
  value       = azurerm_postgresql_flexible_server.my_postgresql_server.fqdn
}
# Output pour le nom de la base de données PostgreSQL créée
output "postgresql_db_name" {
  description = "Le nom de la base de données PostgreSQL créée."
  value       = azurerm_postgresql_flexible_server_database.my_db.name
}
# Output pour l'ID de la base de données PostgreSQL
output "postgresql_db_id" {
  description = "L'ID de la base de données PostgreSQL."
  value       = azurerm_postgresql_flexible_server_database.my_db.id
}
# Output pour l'ID de la zone DNS privée liée au serveur PostgreSQL
output "postgresql_dns_zone_id" {
  description = "L'ID de la zone DNS privée associée au serveur PostgreSQL."
  value       = azurerm_private_dns_zone.my_dns_zone.id
}
# Output pour l'ID du lien DNS avec le réseau virtuel
output "postgresql_dns_zone_link_id" {
  description = "L'ID du lien entre la zone DNS privée et le réseau virtuel."
  value       = azurerm_private_dns_zone_virtual_network_link.my_dns_zone_link.id
}
output "postgresql_host" {
  value = azurerm_postgresql_flexible_server.my_postgresql_server.fqdn
}

output "postgresql_port" {
  value = 5432
}