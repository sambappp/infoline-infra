terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }

  }


}

provider "azurerm" {
  subscription_id = "94d107f4-6183-4130-b847-11826e8b3cef"
  features {}
}

module "rg_dev" {
  source       = "../01-modules/01-rg-dev"
  project_name = var.project_name
  environment  = var.environment
  location     = var.location
}


