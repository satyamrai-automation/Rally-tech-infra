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

variable "storage_accounts" {
  description = "Map of storage accounts to create"
  type = map(object({
    name                          = string
    location                      = string
    resource_group_name           = string
    account_tier                  = optional(string, "Standard")
    account_replication_type      = optional(string, "LRS")
    account_kind                  = optional(string, "StorageV2")
    min_tls_version               = optional(string, "TLS1_2")
    public_network_access_enabled = optional(bool, true)
    tags                          = optional(map(string))
  }))
  default = {}
}

variable "storage_containers" {
  description = "Map of storage containers to create"
  type = map(object({
    name                  = string
    storage_account_key   = optional(string)
    storage_account_id    = optional(string)
    storage_account_name  = optional(string)
    container_access_type = optional(string, "private")
  }))
  default = {}
}

variable "storage_shares" {
  description = "Map of file shares to create"
  type = map(object({
    name                 = string
    storage_account_key  = optional(string)
    storage_account_id   = optional(string)
    storage_account_name = optional(string)
    quota                = number
  }))
  default = {}
}

variable "recovery_services_vaults" {
  description = "Map of recovery services vaults to create"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    sku                 = optional(string, "Standard")
    tags                = optional(map(string))
  }))
  default = {}
}
