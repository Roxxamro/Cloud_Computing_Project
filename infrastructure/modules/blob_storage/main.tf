# Création d'une chaîne aléatoire pour générer un nom unique
resource "random_string" "my_random_storage_name" {
  length  = 9
  special = false
  upper   = false  
}
# Création du compte de stockage Azure
resource "azurerm_storage_account" "storage_account" {
  name                     = "examplestoracc${random_string.my_random_storage_name.result}"  # Nom unique avec la chaîne aléatoire
  resource_group_name      = var.resource_group_name  # Utilise le groupe de ressources fourni dans les variables
  location                 = var.physical_location  # Utilise la localisation physique définie dans les variables
  account_tier             = "Standard"  # Niveau de performance du compte de stockage
  account_replication_type = "LRS"  # Type de réplication : Local Redundant Storage (LRS)
}
# Création du conteneur de stockage dans le compte de stockage
resource "azurerm_storage_container" "storage_container" {
  name                  = "content${random_string.my_random_storage_name.result}"  # Nom unique du conteneur avec la chaîne aléatoire
  storage_account_name  = azurerm_storage_account.storage_account.name  # Fait référence au compte de stockage créé précédemment
  container_access_type = "private"  # Accès privé au conteneur (aucune accessibilité publique)
}
# Création d'un blob dans le conteneur de stockage
resource "azurerm_storage_blob" "blob_storage" {
  name                   = "my-awesome-content${random_string.my_random_storage_name.result}.zip"  # Nom unique pour le blob avec la chaîne aléatoire
  storage_account_name   = azurerm_storage_account.storage_account.name  # Fait référence au compte de stockage
  storage_container_name = azurerm_storage_container.storage_container.name  # Fait référence au conteneur de stockage
  type                   = "Block"  # Type de blob : Block Blob (utilisé pour stocker des fichiers volumineux)
}
