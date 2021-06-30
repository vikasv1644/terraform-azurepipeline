output "vm_admin_password" {
  description = "Administrator password of the Virtual Machine"
  value       = "${format("Pwd1234%s!", random_id.random_password.b64)}"
}

output "db_connection" {
  description = "Connection URL for the Cosmos DB"
  value       = azurerm_cosmosdb_account.db_account.connection_strings
}

output "db_key" {
  description = "Key for the Cosmos DB"
  value       = azurerm_cosmosdb_account.db_account.primary_readonly_key
}