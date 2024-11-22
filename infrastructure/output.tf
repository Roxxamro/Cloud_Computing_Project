output "physical_location" {
  value = module.resource_group.physical_location
}
output "success_message_rg" {
  value = module.resource_group.success_message_rg
}
# Sortie pour le groupe de ressources
output "resource_group_name" {
  description = "Nom du groupe de ressources"
  value = module.resource_group.resource_group_name
}
output "resource_group_location" {
  description = "Emplacement physique du groupe de ressources"
  value = module.resource_group.physical_location
}
# Sortie pour le réseau virtuel (VNet)
output "vnet_id" {
  description = "ID du réseau virtuel"
  value = module.vnet.vnet_id
}
output "subnet_id" {
  description = "ID du sous-réseau"
  value = module.vnet.my_subnet_id
}
# Sortie pour la base de données PostgreSQL
output "database_postgresql_db_name" {
  description = "Nom de la base de données PostgreSQL"
  value = module.database.postgresql_db_name
}
# Sortie pour le stockage Blob
output "blob_storage_account_name" {
  description = "Nom du compte de stockage Blob"
  value = module.blob_storage.storage_account_name
}
