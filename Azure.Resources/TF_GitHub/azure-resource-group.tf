# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}

resource "azurerm_container_registry" "acr" {
  name                = "azcr25041984"
  resource_group_name = azurerm_resource_group.my_demo_rg1.name
  location            = azurerm_resource_group.my_demo_rg1.location
  sku                 = "Premium"
  admin_enabled       = false 
}

resource "azurerm_resource_group" "my_demo_rg2" {
  location = "westus"
  name = "my_demo_rg2"
  provider = azurerm.provider2-westus
  }

  resource "azurerm_resource_group" "my_demo_rg3" {
  location = "westus"
  name = "my_demo_rg3"
  provider = azurerm.provider2-westus
  }