
resource "azurerm_mysql_flexible_server" "this_sql_fs" {
  name                   = "ray-fs"
  resource_group_name    = azurerm_resource_group.this_rg.name
  location               = azurerm_resource_group.this_rg.location
  administrator_login    = "psqladmin"
  administrator_password = "H@Sh1CoR3!"
  backup_retention_days  = 7
  delegated_subnet_id    = azurerm_subnet.this_subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.this_dns.id
  sku_name               = "GP_Standard_D2ds_v4"

}