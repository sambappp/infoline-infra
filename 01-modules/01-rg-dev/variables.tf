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

