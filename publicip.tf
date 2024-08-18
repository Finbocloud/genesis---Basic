resource "azurerm_public_ip" "this_public_ip" {
  name                = "genesis-pip"
  resource_group_name = azurerm_resource_group.this_rg.name
  location            = azurerm_resource_group.this_rg.location
  allocation_method   = "Static"

}