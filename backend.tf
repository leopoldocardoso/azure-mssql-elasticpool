terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-dev"
    storage_account_name = "iacstateterraform"
    container_name       = "terraformstate"
    key                  = "Azure"
  }
}
