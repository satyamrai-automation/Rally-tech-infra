resource_groups = {
  "rg-rally-dev" = {
    name     = "rg-rally-dev-centralindia"
    location = "centralindia"
    tags = {
      Environment = "dev"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

virtual_networks = {
  "vnet-rally-dev" = {
    name                = "vnet-rally-dev-centralindia"
    location            = "centralindia"
    resource_group_name = "rg-rally-dev-centralindia"
    address_space       = ["10.30.0.0/16"]
    tags = {
      Environment = "dev"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

subnets = {
  "snet-frontend" = {
    name                 = "snet-frontend"
    resource_group_name  = "rg-rally-dev-centralindia"
    virtual_network_name = "vnet-rally-dev-centralindia"
    address_prefixes     = ["10.30.1.0/24"]
  }
  "snet-backend" = {
    name                 = "snet-backend"
    resource_group_name  = "rg-rally-dev-centralindia"
    virtual_network_name = "vnet-rally-dev-centralindia"
    address_prefixes     = ["10.30.2.0/24"]
  }
  "snet-database" = {
    name                 = "snet-database"
    resource_group_name  = "rg-rally-dev-centralindia"
    virtual_network_name = "vnet-rally-dev-centralindia"
    address_prefixes     = ["10.30.3.0/24"]
  }
}
