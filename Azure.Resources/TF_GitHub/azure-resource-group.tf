# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}

resource "azurerm_container_registry" "acr" {
  name                = "azcr${random_string.myrandom.id}"
  resource_group_name = azurerm_resource_group.my_demo_rg1.name
  location            = azurerm_resource_group.my_demo_rg1.location
  sku                 = "Premium"
  admin_enabled       = false 
}

resource "azurerm_resource_group" "my_demo_rg2" {
  location = "westus"
  name = myrandom
  provider = azurerm.provider2-westus
  }

resource "random_string" "myrandom" {
  length = 10
  special = false
  upper = false
}