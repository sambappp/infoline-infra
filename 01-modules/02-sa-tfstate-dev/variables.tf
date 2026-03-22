variable "project_name" {
  description = "name of the project"
  type        = string
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
}

variable "environment" {
  description = "environment name (e.g., dev, staging, prod)"
  type        = string
}

variable "account_tier" {
  description = "Account type"
  type        = string
}

variable "account_replication_type" {
  description = "Replication type for the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}
