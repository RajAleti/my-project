terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
    features {
      
    }
  
}
resource "azurerm_resource_group" "rg" {
    name=var.resourcename
    location = var.location
    tags = var.tags
    
  
}

resource "azurerm_storage_account" "storage" {
    name = var.storagename
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    account_tier = "Standard"
    account_replication_type = "LRS"

    tags = var.tags

}

resource "azurerm_storage_container" "rg" {

   
  name                  = var.containername

  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
  tags= var.tags
}



