variable "vnet_variables"{
  type=map(object({
  vnet_name                = string
  vnet_location            = string
  vnet_resource_group_name = string
  vnet_address_space      = list(string)
  vnet_dns_servers        = list(string)
  vnet_bgp_community= string
  vnet_edge_zone=string
  vnet_flow_timeout_in_minutes=number



  ddos_protection_plan =object({
    
      ddos_protection_plan_name= string
ddos_protection_plan_resource_group_name=string
enable=string
  })


 encryption = object({ 
  vnet_enforcement = string })
  
  
  }))
  }
  

  