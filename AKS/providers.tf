terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.14.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9f97e497-32ec-4822-af80-1f5ffd0e2c13"
}


#Backend configuration for AKS
terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfstudyntback"
    container_name       = "tfstate"
    key                  = "aks-terraform.tfstate"
  }
}