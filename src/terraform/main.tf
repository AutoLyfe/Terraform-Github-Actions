terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.37.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "TerraformState"
    storage_account_name = "azterraformstate123"
    container_name       = "tfstate"
    key                  = "demo.terraform.tfstate"
  }
  
}

provider "azurerm" {
  features{}
}


resource "azurerm_resource_group" "demo-rg" {
  name     = "DemoRG"
  location = "South Africa North"
  tags     = {
    environment = prod
  }
}