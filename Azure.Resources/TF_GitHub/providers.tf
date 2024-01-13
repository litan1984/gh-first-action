# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.50.0" # Optional but recommended in production
    }    
    random = {
    source = "hashicorp/random"
    version = "3.5.1"
    } 
  }
  # backend "azurerm" {
  #   resource_group_name = "my-demo-rg1"
  #   storage_account_name = "asa3u1p2avv67"
  #   container_name = "tfstate"
  #   key = "dev.terraform.tfstate"
  #   use_oidc = true
  #   subscription_id = "4b09b3ee-592e-48fd-a985-cb26811b0967"
  #   tenant_id = "bc540cd6-65a2-493d-8ec5-ee06f9bbb60e"
  #   client_id = "8b5273fc-e753-41cb-a3e0-a2ec8ece9a79"
  # }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    virtual_machine {
      delete_os_disk_on_deletion = false
    }
  }
  # subscription_id = "4b09b3ee-592e-48fd-a985-cb26811b0967"
  # client_id       = "d8c4b7d6-eeb9-444e-b711-aa37d84b89ea"
  # client_secret   = "yUg8Q~P~JF_DAO5oU~BEaTmyBRWT~pOUlKeAAaqZ"
  # tenant_id       = "bc540cd6-65a2-493d-8ec5-ee06f9bbb60e"
  subscription_id = "3e4bd703-341f-4304-901c-63d23574b331"
  client_id       = "6dc14acc-6811-4599-b681-a06081e050dd"
  tenant_id       = "e143dd34-9d4b-42ce-b6ea-2f7c65b8a106"
  use_oidc = true
}

provider "azurerm" {
    features {}
    alias = "provider2-westus"
    skip_provider_registration = false
}

provider "random" {}
