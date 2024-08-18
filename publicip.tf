resource "azurerm_public_ip" "this_publicip" {
  name                = "my-publicip"
  resource_group_name = azurerm_resource_group.this_rg.name
  location            = azurerm_resource_group.this_rg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}