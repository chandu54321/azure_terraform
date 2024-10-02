resource "azurerm_resource_group" "base" {
  name = var.resource_group_info.name 
  location = var.resource_group_info.location 
}


resource "azurerm_virtual_network" "virtual" {
  name = var.azure_virtualnetwork.name
  resource_group_name = azurerm_resource_group.base.name
  address_space  = var.azure_virtualnetwork.address_space
  location = var.azure_virtualnetwork.location

}

resource "azurerm_subnet" "public" {
    count = length(var.azure_subnet)
  name =var.azure_subnet[count.index].name
  resource_group_name = azurerm_resource_group.base.name
virtual_network_name = azurerm_virtual_network.virtual.name
address_prefixes = var.azure_subnet[count.index].address_prefixes
}