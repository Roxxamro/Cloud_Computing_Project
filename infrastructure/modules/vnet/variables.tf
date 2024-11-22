variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}
variable "physical_location" {
  description = "Resource group and modules physical location"
  type        = string
}
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}
variable "vnet_address_space" {
  description = "Virtual network address space"
  type        = list(string)
}
variable "subnet_name" {
  description = "Subnet name"
  type        = string
}
variable "subnet_address_prefixes" {
  description = "Subnet address prefixes"
  type        = list(string)
}