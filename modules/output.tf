output "azure_resource" {
  value = azurerm_resource_group.base.id
}


output "azure_virtualnetwork" {
  value = azurerm_virtual_network.virtual[*].id
}


output "azurerm_subnet" {
  value = azurerm_subnet.public[*].id
}