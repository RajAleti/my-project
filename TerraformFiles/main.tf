
resource "azurerm_resource_group" "rg" {
    name=var.resourcename
    location = var.location
    
  
}

resource "azurerm_storage_account" "storage" {
    name = var.storagename
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = "Standard"
    account_replication_type = "LRS"

}

resource "azurerm_storage_container" "rg" {

   
  name                  = var.containername

  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

provider "azurerm" {
    features {
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret_id = var.client_secret_id
    tenent_id= var.tenent_id 

    }

   
  
}

