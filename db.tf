
resource "azurerm_mysql_flexible_server" "this_sql_fs" {
  name                   = var.flexible-server-name
  resource_group_name    = azurerm_resource_group.this_rg.name
  location               = azurerm_resource_group.this_rg.location
  administrator_login    = var.flexible-server-username
  administrator_password = var.flexible-server-password
  backup_retention_days  = 7
  sku_name               = "GP_Standard_D2ds_v4"

}
resource "azurerm_mysql_flexible_database" "this_sql_fs_db" {
  name                = var.flexible-server-db-name
  resource_group_name = azurerm_resource_group.this_rg.name
  server_name         = azurerm_mysql_flexible_server.this_sql_fs.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"

}
