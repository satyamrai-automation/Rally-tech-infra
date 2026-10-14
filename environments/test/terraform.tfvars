resource_groups = {
  "rg-rally-test" = {
    name     = "rg-rally-test-centralindia"
    location = "centralindia"
    tags = {
      Environment = "test"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

virtual_networks = {
  "vnet-rally-test" = {
    name                = "vnet-rally-test-centralindia"
    location            = "centralindia"
    resource_group_name = "rg-rally-test-centralindia"
    address_space       = ["10.20.0.0/16"]
    tags = {
      Environment = "test"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

subnets = {
  "snet-frontend" = {
    name                 = "snet-frontend"
    resource_group_name  = "rg-rally-test-centralindia"
    virtual_network_name = "vnet-rally-test-centralindia"
    address_prefixes     = ["10.20.1.0/24"]
  }
  "snet-backend" = {
    name                 = "snet-backend"
    resource_group_name  = "rg-rally-test-centralindia"
    virtual_network_name = "vnet-rally-test-centralindia"
    address_prefixes     = ["10.20.2.0/24"]
  }
  "snet-database" = {
    name                 = "snet-database"
    resource_group_name  = "rg-rally-test-centralindia"
    virtual_network_name = "vnet-rally-test-centralindia"
    address_prefixes     = ["10.20.3.0/24"]
  }
}

storage_accounts = {
  "sa-test-data" = {
    name                     = "strallytestcentralindia"
    location                 = "centralindia"
    resource_group_name      = "rg-rally-test-centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    min_tls_version          = "TLS1_2"
    tags = {
      Environment = "test"
      Project     = "rally-tech"
      ManagedBy   = "Terraform"
    }
  }
}

storage_containers = {
  "sc-tfstate" = {
    name                  = "tfstate"
    storage_account_key   = "sa-test-data"
    container_access_type = "private"
  }
}

storage_shares = {
  "share-test-data" = {
    name                = "shared-vm-files"
    storage_account_key = "sa-test-data"
    quota               = 50
  }
}

recovery_services_vaults = {
  "rsv-test" = {
    name                = "rsv-rally-test-centralindia"
    location            = "centralindia"
    resource_group_name = "rg-rally-test-centralindia"
    sku                 = "Standard"
    tags = {
      Environment = "test"
      Project     = "rally-tech"
    }
  }
}
