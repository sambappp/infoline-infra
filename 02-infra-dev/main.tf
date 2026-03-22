terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.20.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "rg_infoline_dev"
    storage_account_name = "sainfolinetfstatedev"
    container_name       = "ctrbackendtfstate"
    key                  = "terraform.tfstate"
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

module "sa_tfstate" {
  source                   = "../01-modules/02-sa-tfstate-dev"
  project_name             = var.project_name
  resource_group_name      = module.rg_dev.rg_output
  environment              = var.environment
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  depends_on = [module.rg_dev]

}

resource "azurerm_storage_container" "ctrbackendtfstate" {
  name                  = "ctrbackendtfstate"
  storage_account_id    = module.sa_tfstate.sa_output
  container_access_type = "private"
  depends_on            = [module.sa_tfstate]

  lifecycle {
    prevent_destroy = true
  }
}

