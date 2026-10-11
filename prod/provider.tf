terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-prod"
    storage_account_name = "strorallyprodtfstate"
    container_name       = "tfstate"
    key                  = "rally-tech-infra.prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
