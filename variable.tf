variable "subscription_id" {
  type      = string
  sensitive = true
  default   = "<%=customOptions.azurergprep_subscriptionid%>"
}

variable "tenant_id" {
  type      = string
  sensitive = true
  default   = "<%=customOptions.azurergprep_tenantid%>"
}

variable "client_id" {
  type      = string
  sensitive = true
  default   = "<%= customOptions.azurergprep_clientid %>"
}

variable "client_secret" {
  type      = string
  sensitive = true
  default   = "<%= customOptions.azurergprep_clientsecret %>"
}

variable "region" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "West Europe"
}

variable "resourceGroup" {
  type      = string
  sensitive = false
  default   = "<%=customOptions.azurergprep_rg%>"
}

variable "dbKind" {
  type    = string
  default = "<%=customOptions.azreurgprep_dbkind%>"
}

variable "consistencyPolicyLevel" {
  type    = string
  default = "<%=customOptions.azreurgprep_consistencyLevel%>"
}

variable "cosmosdbAccountName" {
  type    = string
  default = "<%=customOptions.azreurgprep_cosmosdb_account_name%>"
}

variable "defaultTags" {
 description = "A map of tags to assign to the resource."
  type        = map(string)
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}