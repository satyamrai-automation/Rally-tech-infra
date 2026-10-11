output "resource_groups" {
  description = "Created resource groups in dev"
  value       = module.resource_group.resource_groups
}

output "virtual_networks" {
  description = "Created virtual networks in dev"
  value       = module.virtual_network.virtual_networks
}

output "subnets" {
  description = "Created subnets in dev"
  value       = module.subnet.subnets
}
