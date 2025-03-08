provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example123" {
  name     = "example-resources"
  location = "East US"
}

resource "azurerm_storage_account" "example123" {
  name                     = "examplestoracc123"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}



