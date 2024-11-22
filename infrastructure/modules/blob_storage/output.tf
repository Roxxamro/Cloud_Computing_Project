# Output pour afficher le nom unique du compte de stockage
output "storage_account_name" {
  description = "Nom du compte de stockage Azure généré"
  value       = azurerm_storage_account.storage_account.name
}
# Output pour afficher le nom unique du conteneur de stockage
output "storage_container_name" {
  description = "Nom du conteneur de stockage Azure généré"
  value       = azurerm_storage_container.storage_container.name
}
# Output pour afficher le nom du blob de stockage
output "blob_name" {
  description = "Nom du blob dans le conteneur de stockage Azure"
  value       = azurerm_storage_blob.blob_storage.name
}
# Output pour afficher la clé d'accès primaire du compte de stockage
output "storage_account_primary_access_key" {
  description = "Clé d'accès primaire du compte de stockage Azure"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}
# Output pour afficher l'URL du conteneur de stockage
output "storage_container_url" {
  description = "URL complète du conteneur de stockage Azure"
  value       = azurerm_storage_container.storage_container.id
}
# Output pour afficher l'URL du blob de stockage
output "storage_url" {
  description = "The URL of the blob storage"
  value       = azurerm_storage_account.storage_account.primary_blob_endpoint
}