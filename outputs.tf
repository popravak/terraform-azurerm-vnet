/*
output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "snet_name" {
  value = azurerm_virtual_network.vnet.subnet
}

*/
output "snet_id" {
  value = values(azurerm_subnet.snet).*.id
}
