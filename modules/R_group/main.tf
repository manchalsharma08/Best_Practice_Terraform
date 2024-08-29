resource "azurerm_resource_group" "rg" {
  count = 2

  name     = "man-${count.index + 1}" # index -0 1 2 3 4
  location = "westus"
}
