resource "azurerm_service_plan" "api_plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.physical_location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app_service" {
  name                          = var.app_service_name
  resource_group_name           = var.resource_group_name
  location                      = var.physical_location
  service_plan_id               = azurerm_service_plan.api_plan.id
   public_network_access_enabled = true
  virtual_network_subnet_id     = var.my_subnet_id

  site_config {
    application_stack {
      docker_registry_url      = var.docker_registry_url
      docker_image_name        = var.docker_image
      docker_registry_password = var.docker_registry_password
      docker_registry_username = var.docker_registry_username
    }
  }

  app_settings = {

    DATABASE_HOST     = var.database_host
    DATABASE_PORT     = var.database_port
    DATABASE_NAME     = var.database_name
    DATABASE_USER     = var.database_user
    DATABASE_PASSWORD = var.database_password
    STORAGE_ACCOUNT_URL = var.storage_url
  }

  identity {
    type = "SystemAssigned"
  }
}