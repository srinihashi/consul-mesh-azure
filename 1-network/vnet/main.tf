# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.region
}

module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  vnet_location = var.region
  #resource_group_name = var.resource_group_name
  resource_group_name = azurerm_resource_group.rg.name
  vnet_name           = var.vnet_name
  address_space           = var.vnet_cidr
  use_for_each        = true

  tags = {
    environment = var.env
    git_repo    = var.git_repo
  }
}
