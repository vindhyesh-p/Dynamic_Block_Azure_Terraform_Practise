resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet_names
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space #["10.0.0.0/16"]


  dynamic "subnet" {
    for_each = var.subnet_names
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}
