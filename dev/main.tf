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
