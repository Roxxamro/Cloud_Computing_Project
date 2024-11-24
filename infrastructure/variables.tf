# Variables pour le groupe de ressources
variable "subscription_id" {
  description = "L'ID de la souscription Azure"
  type        = string
}
variable "resource_group_name" {
  description = "Le nom du groupe de ressources"
  type        = string
}
variable "physical_location" {
  description = "La localisation physique du groupe de ressources"
  type        = string
}
# Variables pour le réseau virtuel (VNet)
variable "vnet_name" {
  description = "Le nom du réseau virtuel"
  type        = string
  default     = "my-vnet"
}
variable "vnet_address_space" {
  description = "L'espace d'adressage du réseau virtuel"
  type        = list(string)
}
variable "subnet_name" {
  description = "Le nom du sous-réseau"
  type        = string
}
variable "subnet_address_prefixes" {
  description = "Les préfixes d'adresses pour les sous-réseaux"
  type        = list(string)
}
# Variables pour la base de données PostgreSQL
variable "administrator_login" {
  description = "Nom d'utilisateur administrateur de la base de données"
  type        = string
}
variable "administrator_password" {
  description = "Mot de passe administrateur pour la base de données"
  type        = string
  sensitive   = true
}
variable "postgresql_db_name" {
  description = "Nom de la base de données PostgreSQL"
  type        = string
}
variable "my_dns_zone_name" {
  description = "Le nom de la zone DNS"
  type        = string
}
variable "my_dns_zone_link_name" {
  description = "Le nom du lien vers la zone DNS"
  type        = string
}
# Variables pour le stockage Blob
variable "blob_storage_account_name" {
  description = "Nom du compte de stockage Blob"
  type        = string
}
variable "blob_storage_account_type" {
  description = "Type du compte de stockage Blob (par exemple, 'Standard_LRS')"
  type        = string
  default     = "Standard_LRS"
}
# Variables pour le service App Service avec Docker
variable "docker_image" {
  description = "URL de l'image Docker"
  type        = string
}
variable "docker_registry_username" {
  description = "Nom d'utilisateur du registre Docker"
  type        = string
}
variable "docker_registry_password" {
  description = "Mot de passe du registre Docker"
  type        = string
  sensitive   = true
}
variable "docker_registry_url" {
  description = "URL du registre Docker"
  type        = string
}
variable "service_plan_name" {
  description = "Nom du plan de service pour l'App Service"
  type        = string
}

variable "app_service_name" {
  description = "Le nom de l'App Service"
  type        = string
}
variable "database_host" {
  description = "The database host"
  type        = string
}

variable "database_port" {
  description = "The database port"
  type        = string
}

variable "database_name" {
  description = "The database name"
  type        = string
}

variable "database_user" {
  description = "The database user"
  type        = string
}

variable "database_password" {
  description = "The database password"
  type        = string
  sensitive   = true
}

variable "storage_url" {
  description = "The blob storage URL"
  type        = string
}

variable "my_subnet_id" {
  description = "L'ID du sous-réseau du réseau virtuel auquel la zone DNS sera liée."
  type        = string
}
variable "storage_account_id" {
  description = "L'ID du compte de stockage"
  type        = string
}