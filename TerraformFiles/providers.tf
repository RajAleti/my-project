provider "azurerm" {
    features {

    }

    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret_id =var.client_secret_id
    tenent_id=var.tenent_id 
  
}

