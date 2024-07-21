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
  # default   = "<%= customOptions.azurergprep_clientid %>"
}

variable "client_secret" {
  type      = string
  sensitive = true
  # default   = "<%= customOptions.azurergprep_clientsecret %>"
}

variable "region" {
  default = "East US"
}

variable "resourceGroup" {
  type      = string
  sensitive = false
  default   = "<%=customOptions.azurergprep_rg%>"
}

variable "dbKind" {
  type    = string
  default = "<%=customOptions.azreurgprep_dbkind>"
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
  type        = map(any)
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source = "HPE-CMP"
  }
}