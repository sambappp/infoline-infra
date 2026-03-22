locals {
  resource_suffix = "rg_${var.project_name}_${var.environment}"
}

resource "azurerm_resource_group" "rg" {
  name     = local.resource_suffix
  location = var.location
}