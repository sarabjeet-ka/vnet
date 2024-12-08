data "azurerm_network_ddos_protection_plan" "ddos_protection_plan" { 
  for_each = { for k, v in var.vnet_variables : k => v if v.ddos_protection_plan.enable } 
  name = each.value.ddos_protection_plan.ddos_protection_plan_name 
  resource_group_name = each.value.ddos_protection_plan.ddos_protection_plan_resource_group_name 
  }
resource "azurerm_virtual_network" "vnet" {
    for_each =var.vnet_variables
  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.vnet_resource_group_name
  address_space       = each.value.vnet_address_space
  dns_servers         = each.value.vnet_dns_servers
  bgp_community=each.value.vnet_bgp_community
  edge_zone=each.value.vnet_edge_zone
  flow_timeout_in_minutes=each.value.vnet_flow_timeout_in_minutes

dynamic "ddos_protection_plan" { 
  for_each = each.value.ddos_protection_plan.enable ? [1] : [] 
  content { 
    id = data.azurerm_network_ddos_protection_plan.ddos_protection_plan[each.key].id 
    enable = each.value.ddos_protection_plan.enable 
    } 
    }
dynamic "encryption" { 
  for_each = each.value.encryption != null ? [1] : [] 
content {   
  enforcement = each.value.encryption.vnet_enforcement 
  } 
  }
  }