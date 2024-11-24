provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
# Création du groupe de ressources
module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  physical_location   = var.physical_location
}
# Création du réseau virtuel (VNet)
module "vnet" {
  source                  = "./modules/vnet"
  resource_group_name     = module.resource_group.resource_group_name
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  subnet_name            = var.subnet_name
  physical_location      = module.resource_group.physical_location
  subnet_address_prefixes = var.subnet_address_prefixes
}
# Déploiement de la base de données PostgreSQL
module "database" {
  source                 = "./modules/db"
  resource_group_name    = module.resource_group.resource_group_name
  vnet_id                = module.vnet.vnet_id
  physical_location      = module.resource_group.physical_location
  my_subnet_id           = module.vnet.my_subnet_id
  my_dns_zone_name       = var.my_dns_zone_name
  my_dns_zone_link_name  = var.my_dns_zone_link_name
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  postgresql_db_name     = var.postgresql_db_name

  depends_on = [module.vnet]
}

# Déploiement de stockage Blob
module "blob_storage" {
  source              = "./modules/blob_storage"
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location
}
# Déploiement du service App Service avec Docker

module "app_service" {
  source              = "./modules/app_service"
  app_service_name    = var.app_service_name
  resource_group_name = module.resource_group.resource_group_name
  physical_location   = module.resource_group.physical_location
  # Docker vars using GHCR (GitHub Container Registry)
  docker_image             = var.docker_image
  docker_registry_username = var.docker_registry_username
  docker_registry_password = var.docker_registry_password
  docker_registry_url      = var.docker_registry_url
  # API subnet
  my_subnet_id     = module.vnet.my_subnet_id
  service_plan_name = var.service_plan_name

  # Database environment variables
  database_host     = module.database.postgresql_host
  database_port     = module.database.postgresql_port
  database_name     = module.database.postgresql_db_name
  database_user     = var.administrator_login
  database_password = var.administrator_password

  # Blob storage environment variables
  storage_url        = module.blob_storage.storage_url
  storage_account_id = var.storage_account_id
}