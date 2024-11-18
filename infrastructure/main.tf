provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
module "resource_group" {
  source              = "./infrastructure/resource_group"
  resource_group_name = var.resource_group_name
  physical_location   = var.physical_location
}
module "vnet" {
  source                  = "./infrastructure/vnet"
  resource_group_name     = module.resource_group.resource_group_name
  vnet_name               = var.vnet_name
  vnet_address_space      = var.vnet_address_space
  my_subnet_name          = var.my_subnet_name
  physical_location       = module.resource_group.physical_location
  subnet_address_prefixes = var.subnet_address_prefixes
}
