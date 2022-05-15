
output "rgname" {
    value = azurerm_resource_group.rg.id
  
}

output "storage" {
    value = azurerm_storage_account.storage.name
  
}

output "container" {

    value = azurerm_storage_container.rg[0].name
  
}