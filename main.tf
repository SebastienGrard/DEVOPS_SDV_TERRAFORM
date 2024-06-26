# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "0b38c18f-3ddf-40c4-b579-3d87400cdb19"
}

# Création de la ressource "azurerm_ressource_group" si elle n'est pas présente

resource "azurerm_resource_group" "example" {
  name     = "azurerm_resource_group"
  location = "East US"
}
