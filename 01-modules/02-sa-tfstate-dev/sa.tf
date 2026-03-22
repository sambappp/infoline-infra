locals {
  resource_suffix = "sa${var.project_name}tfstate${var.environment}"
}

resource "azurerm_storage_account" "name" {
  name                     = local.resource_suffix
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  lifecycle {
    prevent_destroy = true
  }
}
