output "sa_output" {
  description = "ID of the Storage Account for Terraform state"
  value       = azurerm_storage_account.name.id
  
}