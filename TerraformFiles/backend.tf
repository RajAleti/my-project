terraform {
  backend "azurerm" {
    resource_group_name  = "MainResourceGroup"
    storage_account_name = "azurestorageraja789"
    container_name       = "democontainer0"
    key                  = "demotf.terraform.tfstate"
  }
}