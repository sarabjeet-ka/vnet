vnet_variables = {
"vnet_1"= {
  vnet_name                = "sarabvnet"
  vnet_location            = "Central India"
  vnet_resource_group_name = "NetworkWatcherRG"
  vnet_address_space       = ["10.0.0.0/16","172.16.0.0/16"]
  vnet_dns_servers         = ["10.1.1.1"]
  vnet_bgp_community= null
  vnet_edge_zone=null
  vnet_flow_timeout_in_minutes=4

 ddos_protection_plan = {
  ddos_protection_plan_name="xyz-ddos"
  ddos_protection_plan_resource_group_name ="sarab-rg"
  enable=true
 }
  
    encryption = null
  
  }
  }
  

  