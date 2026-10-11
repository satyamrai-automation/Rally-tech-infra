resource_groups = {
  "rg-rally-prod" = {
    name     = "rg-rally-prod-centralindia"
    location = "centralindia"
    tags = {
      Environment = "prod"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

virtual_networks = {
  "vnet-rally-prod" = {
    name                = "vnet-rally-prod-centralindia"
    location            = "centralindia"
    resource_group_name = "rg-rally-prod-centralindia"
    address_space       = ["10.40.0.0/16"]
    tags = {
      Environment = "prod"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

subnets = {
  "snet-frontend" = {
    name                 = "snet-frontend"
    resource_group_name  = "rg-rally-prod-centralindia"
    virtual_network_name = "vnet-rally-prod-centralindia"
    address_prefixes     = ["10.40.1.0/24"]
  }
  "snet-backend" = {
    name                 = "snet-backend"
    resource_group_name  = "rg-rally-prod-centralindia"
    virtual_network_name = "vnet-rally-prod-centralindia"
    address_prefixes     = ["10.40.2.0/24"]
  }
  "snet-database" = {
    name                 = "snet-database"
    resource_group_name  = "rg-rally-prod-centralindia"
    virtual_network_name = "vnet-rally-prod-centralindia"
    address_prefixes     = ["10.40.3.0/24"]
  }
}
