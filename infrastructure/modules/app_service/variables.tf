variable "resource_group_name" {
  description = "Le nom du groupe de ressources dans lequel la base de données sera créée."
  type        = string
}
variable "service_plan_name" {
  description = "Nom du plan de service"
  type        = string
}
variable "physical_location" {
  description = "Emplacement physique"
  type        = string
}

variable "app_service_name" {
  description = "le nom de l'App Service"
  type        = string
}

variable "my_subnet_id" {
  description = "L'ID du sous-réseau"
  type        = string
}
variable "docker_registry_password" {
  description = "Le mot de passe du registre Docker"
  type        = string
  sensitive   = true
}
variable "docker_image" {
  description = "L'image Docker"
  type        = string
}
variable "docker_registry_url" {
  description = "L'URL du registre Docker"
  type        = string
}
variable "docker_registry_username" {
  description = "Le nom d'utilisateur du registre Docker"
  type        = string
  sensitive   = true
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
variable "storage_account_id" {
  description = "L'ID du compte de stockage"
  type        = string
}