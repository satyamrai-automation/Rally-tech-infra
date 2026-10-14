output "resource_groups" {
  description = "Created resource groups in test"
  value       = module.resource_group.resource_groups
}

output "virtual_networks" {
  description = "Created virtual networks in test"
  value       = module.virtual_network.virtual_networks
}

output "subnets" {
  description = "Created subnets in test"
  value       = module.subnet.subnets
}

output "storage_accounts" {
  description = "Created storage accounts in test"
  value       = module.storage.storage_accounts
}

output "storage_account_ids" {
  description = "Map of Storage Account IDs in test"
  value       = module.storage.storage_account_ids
}

output "storage_containers" {
  description = "Created storage containers in test"
  value       = module.storage.storage_containers
}

output "storage_shares" {
  description = "Created storage shares in test"
  value       = module.storage.storage_shares
}

output "recovery_services_vaults" {
  description = "Created recovery services vaults in test"
  value       = module.storage.recovery_services_vaults
}
