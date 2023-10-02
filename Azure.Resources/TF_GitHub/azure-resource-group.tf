# Create Resource Group 
# resource "azurerm_resource_group" "my_demo_rg1" {
#   location = "eastus"
#   name = "my-demo-rg1"  
# }


resource "azurerm_resource_group" "my_demo_rg2" {
  location = "westus"
  name = "my-demo-rg2"
  provider = azurerm.provider2-westus
  }

resource "azurerm_resource_group" "my_demo_rg3" {
  location = "westus"
  name = "my-demo-${random_string.myrandom.id}"
  provider = azurerm.provider2-westus
  }

# resource "azurerm_storage_account" "tfstate" {
#   name = "asa${random_string.myrandom.id}"
#   resource_group_name = azurerm_resource_group.my_demo_rg1.name
#   location = azurerm_resource_group.my_demo_rg1.location
#   account_tier = "Standard"
#   account_replication_type = "LRS"
#   allow_nested_items_to_be_public = true
#   tags = {
#     environment = "staging"
#   }
# }

# resource "azurerm_storage_container" "tfstate" {
#   name = "tfstate"
#   storage_account_name = azurerm_storage_account.tfstate.name
#   container_access_type = "private"  
# }

resource "random_string" "myrandom" {
  length = 10
  special = false
  upper = false
}