
resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  
}

resource "azurerm_storage_container" "example" {
  count                = length(var.containers)
  name                 = var.containers[count.index].name
  storage_account_name = azurerm_storage_account.main.name
  container_access_type = var.containers[count.index].access_type
}

