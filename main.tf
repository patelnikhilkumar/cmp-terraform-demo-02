resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = var.region
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_cosmosdb_account" "db" {
  name                = var.cosmosdbAccountName #"tfex-cosmos-db-${random_integer.ri.result}"
  location            = azurerm_resource_group.example.location
  resource_group_name = var.resourceGroup       #azurerm_resource_group.example.name
  offer_type          = "Standard"
  kind                = var.dbKind #"MongoDB"

  automatic_failover_enabled = true

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = var.consistencyPolicyLevel #"BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_location {
    location          = "eastus"
    failover_priority = 1
  }

  geo_location {
    location          = "westus"
    failover_priority = 0
  }
}