resource "random_integer" "rand" {
  min = 10000
  max = 99999
}

resource "azurerm_storage_account" "this" {
  name                     = "tfstorage${random_integer.rand.result}"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
