# Création de la zone DNS privée
resource "azurerm_private_dns_zone" "my_dns_zone" {
  name                = var.my_dns_zone_name
  resource_group_name = var.resource_group_name
}
# Lien de la zone DNS privée avec le réseau virtuel
resource "azurerm_private_dns_zone_virtual_network_link" "my_dns_zone_link" {
  name                  = var.my_dns_zone_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.my_dns_zone.name
  virtual_network_id    = var.vnet_id
}
# Génération d'un nom unique pour le serveur PostgreSQL flexible
resource "random_string" "my_random_server_name" {
  length  = 24
  special = false
  upper   = false 
}
# Création du serveur PostgreSQL flexible
resource "azurerm_postgresql_flexible_server" "my_postgresql_server" {
  name                          = "postgresqlflexibleserver${random_string.my_random_server_name.result}" # Utilisation du nom unique généré
  resource_group_name           = var.resource_group_name
  location                      = var.physical_location
  version                       = "16"
  delegated_subnet_id           = var.my_subnet_id
  private_dns_zone_id           = azurerm_private_dns_zone.my_dns_zone.id
  public_network_access_enabled = false
  administrator_login           = var.administrator_login
  administrator_password        = var.administrator_password
  zone                          = "1"  # La zone DNS associée
  storage_mb   = 32768  # Taille du stockage en Mo
  storage_tier = "P30"  # Niveau de stockage pour la base de données
  sku_name = "GP_Standard_D4s_v3"  # Type de SKU pour la machine virtuelle
  # Dépendance explicite pour s'assurer que le lien DNS est créé avant le serveur PostgreSQL
  depends_on = [azurerm_private_dns_zone_virtual_network_link.my_dns_zone_link]
}
# Création de la base de données PostgreSQL dans le serveur flexible
resource "azurerm_postgresql_flexible_server_database" "my_db" {
  name      = var.postgresql_db_name
  server_id = azurerm_postgresql_flexible_server.my_postgresql_server.id
}

