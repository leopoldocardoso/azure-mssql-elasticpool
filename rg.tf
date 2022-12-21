resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.sufix}"
  location = var.location

}