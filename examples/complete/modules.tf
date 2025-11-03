# Example: Complete usage of Azure Naming Module

# Resource Group Name
module "resource_group_name" {
  source        = "../.."
  environment   = "prod"
  location      = "westus2"
  max_length    = 60 # Resource group names have a 60 character limit
  prefix        = "tf"
  resource_type = "rg"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Storage Account Name (no dashes)
module "storage_account_name" {
  source        = "../.."
  environment   = "prod"
  location      = "northcentralus"
  max_length    = 24 # Storage accounts have a 24 character limit
  prefix        = "tf"
  resource_type = "st"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Virtual Machine Name with instance number 1
module "vm_name_linux_1" {
  source          = "../.."
  environment     = "prod"
  instance_number = 1
  location        = "southcentralus"
  max_length      = 64 # Linux VM names have a 64 character limit
  prefix          = "tf"
  resource_type   = "vm"
  suffix          = random_id.this.hex
  workload        = "prj"
}
# Virtual Machine Name with instance number 2
module "vm_name_linux_2" {
  source          = "../.."
  environment     = "test"
  instance_number = 2
  location        = "westcentralus"
  max_length      = 64 # Linux VM names have a 64 character limit
  prefix          = "tf"
  resource_type   = "vm"
  suffix          = random_id.this.hex
  workload        = "prj"
}
module "vm_name_windows_1" {
  source        = "../.."
  environment   = "qa"
  location      = "eastus"
  max_length    = 15 # Windows VM names have a 15 character limit
  prefix        = "p"
  resource_type = "vm"
  suffix        = random_id.this.hex
  workload      = "xx"
}

# Key Vault Name
module "key_vault_name" {
  source          = "../.."
  environment     = "beta"
  instance_number = 0 # No instance number, don't show it
  location        = "westus3"
  max_length      = 24 # Key Vault names have a 24 character limit
  prefix          = "tf"
  resource_type   = "kv"
  suffix          = random_id.this.hex
  workload        = "prj"
}
# App Service Name with prefix
module "app_service_name" {
  source        = "../.."
  environment   = "poc"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "app"
  suffix        = random_id.this.hex
  workload      = "prj"

}
# SQL Server Name with suffix
module "sql_server_name" {
  source        = "../.."
  environment   = "prod"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "sql"
  suffix        = "primary-${random_id.this.hex}"
  workload      = "prj"
}
# Virtual Network Name
module "vnet_name" {
  source        = "../.."
  environment   = "beta"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "vnet"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Subnet Name
module "subnet_name" {
  source        = "../.."
  environment   = "dev"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "subnet"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Network Security Group Name
module "nsg_name" {
  source        = "../.."
  environment   = "prod"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "nsg"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Public IP Name
module "public_ip_name" {
  source        = "../.."
  environment   = "dev"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "pip"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# Load Balancer Name
module "load_balancer_name" {
  source        = "../.."
  environment   = "qa"
  location      = "eastus"
  prefix        = "tf"
  resource_type = "lb"
  suffix        = random_id.this.hex
  workload      = "prj"
}
# 
