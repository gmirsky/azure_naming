# Example: Complete usage of Azure Naming Module

# Resource Group Name
module "resource_group_name" {
  source        = "../.."
  resource_type = "rg"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
# Storage Account Name (no dashes)
module "storage_account_name" {
  source        = "../.."
  resource_type = "st"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  max_length    = 24 # Storage accounts have a 24 character limit
}
# Virtual Machine Name with instance number 1
module "vm_name_1" {
  source          = "../.."
  resource_type   = "vm"
  workload        = "myapp"
  environment     = "prod"
  location        = "eastus"
  instance_number = 1
}
# Virtual Machine Name with instance number 2
module "vm_name_2" {
  source          = "../.."
  resource_type   = "vm"
  workload        = "myapp"
  environment     = "prod"
  location        = "eastus"
  instance_number = 2
}
# Key Vault Name
module "key_vault_name" {
  source        = "../.."
  resource_type = "kv"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  max_length    = 24 # Key Vault names have a 24 character limit
}
# App Service Name with prefix
module "app_service_name" {
  source        = "../.."
  resource_type = "app"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  prefix        = "contoso"
}
# SQL Server Name with suffix
module "sql_server_name" {
  source        = "../.."
  resource_type = "sql"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  suffix        = "primary"
}
# Virtual Network Name
module "vnet_name" {
  source        = "../.."
  resource_type = "vnet"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
# Subnet Name
module "subnet_name" {
  source        = "../.."
  resource_type = "subnet"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
# Network Security Group Name
module "nsg_name" {
  source        = "../.."
  resource_type = "nsg"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
# Public IP Name
module "public_ip_name" {
  source        = "../.."
  resource_type = "pip"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
# Load Balancer Name
module "load_balancer_name" {
  source        = "../.."
  resource_type = "lb"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}
