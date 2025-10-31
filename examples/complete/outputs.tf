# Resource Group Name
output "resource_group_name" {
  description = "Generated resource group name"
  value       = module.resource_group_name.name
  sensitive   = false
  ephemeral   = false
}

# Storage Account Name
output "storage_account_name" {
  description = "Generated storage account name (without dashes)"
  value       = module.storage_account_name.name_no_dashes
}

output "storage_account_name_with_dashes" {
  description = "Generated storage account name (with dashes)"
  value       = module.storage_account_name.name
}

# Virtual Machine Name 1
output "vm_name_1" {
  description = "Generated VM name with instance number"
  value       = module.vm_name_1.name
}

# Virtual Machine Name 2
output "vm_name_2" {
  description = "Generated VM name with instance number"
  value       = module.vm_name_2.name
}

# Key Vault Name
output "key_vault_name" {
  description = "Generated Key Vault name"
  value       = module.key_vault_name.name
}

# App Service Name
output "app_service_name" {
  description = "Generated App Service name with prefix"
  value       = module.app_service_name.name
}

# SQL Server Name
output "sql_server_name" {
  description = "Generated SQL Server name with suffix"
  value       = module.sql_server_name.name
}

# Virtual Network Name
output "vnet_name" {
  description = "Generated Virtual Network name"
  value       = module.vnet_name.name
}

# Subnet Name
output "subnet_name" {
  description = "Generated Subnet name"
  value       = module.subnet_name.name
}

# Show region abbreviation
output "region_abbreviation" {
  description = "Abbreviated region code"
  value       = module.resource_group_name.region_short
}

# Show Network Security Group Name
output "nsg_name" {
  description = "Generated Network Security Group name"
  value       = module.nsg_name.name
}
# Show Public IP Name
output "public_ip_name" {
  description = "Generated Public IP name"
  value       = module.public_ip_name.name
}
# Show Load Balancer Name
output "load_balancer_name" {
  description = "Generated Load Balancer name"
  value       = module.load_balancer_name.name
}
