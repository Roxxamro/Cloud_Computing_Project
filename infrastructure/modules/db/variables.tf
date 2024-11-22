variable "resource_group_name" {
  description = "Le nom du groupe de ressources dans lequel la base de données sera créée."
  type        = string
}
variable "my_subnet_id" {
  description = "L'ID du sous-réseau du réseau virtuel auquel la zone DNS sera liée."
  type        = string
}
variable "vnet_id" {
  description = "L'ID du réseau virtuel auquel le serveur de base de données sera lié."
  type        = string
}
variable "physical_location" {
  description = "La localisation physique du serveur de base de données."
  type        = string
}
variable "my_dns_zone_name" {
  description = "Le nom de la zone DNS privée."
  type        = string
}
variable "my_dns_zone_link_name" {
  description = "Le nom du lien de la zone DNS privée."
  type        = string
}
variable "administrator_login" {
  description = "Le nom d'utilisateur administrateur pour le serveur de base de données."
  type        = string
}
variable "administrator_password" {
  description = "Le mot de passe administrateur pour le serveur de base de données."
  type        = string
}
variable "postgresql_db_name" {
  description = "Le nom de la base de données à créer."
  type        = string
}
