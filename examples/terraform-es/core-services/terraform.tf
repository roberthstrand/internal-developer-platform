terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }

  cloud {
    organization = "robstr"
    workspaces {
      name = "demo-idp-core-services"
    }
  }

}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}

  alias           = "management"
  subscription_id = var.management_subscription_id
}

provider "azurerm" {
  features {}

  alias           = "connectivity"
  subscription_id = var.connectivity_subscription_id
}
