# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.50.0" # Optional but recommended in production
    }    
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = "4b09b3ee-592e-48fd-a985-cb26811b0967"
  # client_id       = "d8c4b7d6-eeb9-444e-b711-aa37d84b89ea"
  # client_secret   = "yUg8Q~P~JF_DAO5oU~BEaTmyBRWT~pOUlKeAAaqZ"
  # tenant_id       = "bc540cd6-65a2-493d-8ec5-ee06f9bbb60e"
  subscription_id = "4b09b3ee-592e-48fd-a985-cb26811b0967"
  client_id       = "8b5273fc-e753-41cb-a3e0-a2ec8ece9a79"
  tenant_id       = "bc540cd6-65a2-493d-8ec5-ee06f9bbb60e"
  use_oidc = true
}

# Create Resource Group 
resource "azurerm_resource_group" "my_demo_rg1" {
  location = "eastus"
  name = "my-demo-rg1"  
}

