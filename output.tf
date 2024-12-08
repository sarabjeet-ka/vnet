output "vnet_details" {
  value = { for k, v in azurerm_virtual_network.vnet : k => {
    vnet_name = v.name
    vnet_id   = v.id
  }}
}
