
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "snet_name" {
  value = azurerm_virtual_network.vnet.subnet
}