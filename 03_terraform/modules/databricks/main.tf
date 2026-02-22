resource "azurerm_databricks_workspace" "dbw" {
  name                = var.workspace_name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "premium"
}
