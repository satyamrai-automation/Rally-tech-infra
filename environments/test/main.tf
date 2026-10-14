# ==============================================================================
# Pillar 1 & 2: Resource Groups & Networking
# ==============================================================================
module "resource_group" {
  source = "git::https://satyam-cicd-org@dev.azure.com/satyam-cicd-org/DevOpsOrbit/_git/azurerm_resource_group?ref=v1.0.0"

  resource_groups = var.resource_groups
}

module "virtual_network" {
  source = "git::https://satyam-cicd-org@dev.azure.com/satyam-cicd-org/DevOpsOrbit/_git/azurerm_virtual_network?ref=v1.0.0"

  virtual_networks = var.virtual_networks

  depends_on = [module.resource_group]
}

module "subnet" {
  source = "git::https://satyam-cicd-org@dev.azure.com/satyam-cicd-org/DevOpsOrbit/_git/azurerm_subnet?ref=v1.0.0"

  subnets = var.subnets

  depends_on = [module.virtual_network]
}

# ==============================================================================
# Pillar 4: Storage & Backup Data Protection
# ==============================================================================
module "storage" {
  source = "git::https://github.com/satyamrai-automation/terraform-azure-storage.git?ref=v1.0.0"

  storage_accounts         = var.storage_accounts
  storage_containers       = var.storage_containers
  storage_shares           = var.storage_shares
  recovery_services_vaults = var.recovery_services_vaults

  depends_on = [module.resource_group]
}
