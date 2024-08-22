data "azurerm_client_config" "current" {
  
}
resource "azurerm_key_vault" "this_keyvault" {
  name                        = var.keyvault-name
  location                    = azurerm_resource_group.this_rg.location
  resource_group_name         = azurerm_resource_group.this_rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "51728fed-3227-4536-ba41-8f81e7740222"

    secret_permissions = [
      "Get", "Set", "Delete", "List" 
    ]

  }
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = "98b4f863-59fb-4c6b-a40b-7be3620e4c8b"

    secret_permissions = [
      "Get", "Set", "Delete", "List" 
    ]
}
}
resource "azurerm_key_vault_secret" "this_win_password" {
  name         = "windows-password"
  value        = var.windows-vm-password
  key_vault_id = azurerm_key_vault.this_keyvault.id
}
resource "azurerm_key_vault_secret" "this_db_password" {
  name         = "db-password"
  value        = var.flexible-server-password
  key_vault_id = azurerm_key_vault.this_keyvault.id
}