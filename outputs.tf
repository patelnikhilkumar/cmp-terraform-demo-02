output "cosmosDbAccountName" {
  value = azurerm_cosmosdb_account.db.name
}

output "cosmosDbKind" {
  value = azurerm_cosmosdb_account.db.kind
}