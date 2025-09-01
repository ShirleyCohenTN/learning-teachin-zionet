output "vnet_id" {
  value = azurerm_virtual_network.this.id
}
output "aks_subnet_id" {
  value = azurerm_subnet.aks.id
}
output "db_subnet_id" {
  value = azurerm_subnet.db.id
}
output "integration_subnet_id" {
  value = azurerm_subnet.integration.id
}
output "management_subnet_id" {
  value = azurerm_subnet.management.id
}
