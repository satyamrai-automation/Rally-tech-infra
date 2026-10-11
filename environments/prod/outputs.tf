output "resource_groups" {
  description = "Created resource groups in prod"
  value       = module.resource_group.resource_groups
}

output "virtual_networks" {
  description = "Created virtual networks in prod"
  value       = module.virtual_network.virtual_networks
}

output "subnets" {
  description = "Created subnets in prod"
  value       = module.subnet.subnets
}
