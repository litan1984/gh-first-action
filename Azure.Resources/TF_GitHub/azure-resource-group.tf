# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}


resource "azurerm_resource_group" "my_demo_rg2" {
  location = "westus"
  name = "my-demo-rg1"
  provider = azurerm.provider2-westus
  }


resource "azurerm_storage_account" "tfstate" {
  name = "asa${randum_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.my_demo_rg1.name
  location = azurerm_resource_group.my_demo_rg1.location
  access_tier = "Standard"
  account_replication_type = "LRS"
  allow_nested_items_to_be_public = true
  tags = {
    environment = "staging"
  }
  depends_on = [ random_string.myrandom ]
}

resource "azurerm_storage_container" "tfstate" {
  name = "tfstate"
  storage_storage_account_name = azurerm_storage_account.tfstate.name
  contaicontainer_access_type = "private"  
}

resource "random_string" "myrandom" {
  length = 10
  special = false
  upper = false
}