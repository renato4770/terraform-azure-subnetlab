variable "vnet_name" {
  description = "Vnet name"
  
}

variable "address_space" {
  description = "address space for the vnet"
  type = list(string)
  
}

variable "dns_servers" {
  description = "DNS servers IP"
  type = list(string)
  
}

variable "rg_name" {
  description = "Resource group name"
  type = string
}

variable "enviroments" {
  description = "List of enviroment identifiers"
  type = list(string)
  
}


variable "regions" {
  description = "List of regions"
  type = list(string)
  
}
