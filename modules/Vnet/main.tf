


resource "azurerm_resource_group" "rg" {
  for_each = var.man
  name     = each.value.rg_name
  location = each.value.location

}
resource "azurerm_virtual_network" "vnet" {
  for_each = var.man

  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space

  dynamic "subnet" {
    for_each = each.value.alok 
    # iterator = Golgapa
    content {
      name             = subnet.value.snet_name
      address_prefixes = subnet.value.address_prefixes
    }
  }

}

