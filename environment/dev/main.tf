module "resource_groups" {
  source = "../../child_module/resource_group"
  rg     = var.rgs

}

module "virtual_networks" {
  depends_on = [module.resource_groups]
  source     = "../../child_module/virtual_network"
  vnet       = var.vnets

}

module "azurerm_subnet" {
  depends_on = [module.virtual_networks]
  source     = "../../child_module/subnet"
  subnet     = var.subnets

}
