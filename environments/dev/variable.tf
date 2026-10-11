variable "resource_groups" {
  description = "Map of resource groups to create"
  type = map(object({
    name     = string
    location = string
    tags     = optional(map(string))
  }))
  default = {}
}

variable "virtual_networks" {
  description = "Map of virtual networks to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    dns_servers         = optional(list(string))
    tags                = optional(map(string))
  }))
  default = {}
}

variable "subnets" {
  description = "Map of subnets to create"
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
    service_endpoints    = optional(list(string))
  }))
  default = {}
}
