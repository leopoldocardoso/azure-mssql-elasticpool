resource "azurerm_mssql_elasticpool" "elasticpoolhml" {
  name                = "epool-${var.sufix}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  server_name         = azurerm_sql_server.mymssqlhml.name
  license_type        = "LicenseIncluded"
  max_size_gb         = 4.8828125

  sku {
    name     = "BasicPool"
    tier     = "Basic"
    capacity = 50
  }
  per_database_settings {
    min_capacity = 0
    max_capacity = 5
  }
}
 