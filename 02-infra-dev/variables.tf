
variable "project_name" {
  description = "name of the project"
  type        = string
  default     = "infoline"
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "francecentral"
}

variable "environment" {
  description = "environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

