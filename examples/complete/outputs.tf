# Resource Group Name
output "resource_group_name" {
  description = "Generated resource group name"
  value       = module.resource_group_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.resource_group_name]
}

# Storage Account Name
output "storage_account_name" {
  description = "Generated storage account name (without dashes)"
  value       = module.storage_account_name.name_no_dashes
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.storage_account_name]
}

# Virtual Machine Name 1
output "vm_name_linux_1" {
  description = "Generated VM name with instance number"
  value       = module.vm_name_linux_1.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.vm_name_linux_1]
}

# Virtual Machine Name 2
output "vm_name_linux_2" {
  description = "Generated VM name with instance number"
  value       = module.vm_name_linux_2.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.vm_name_linux_2]
}

output "vm_name_windows_1" {
  description = "Generated Windows VM name with instance number"
  value       = module.vm_name_windows_1.name_no_dashes
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.vm_name_windows_1]
}

# App Service Name
output "app_service_name" {
  description = "Generated App Service name with prefix"
  value       = module.app_service_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.app_service_name]
}

# SQL Server Name
output "sql_server_name" {
  description = "Generated SQL Server name with suffix"
  value       = module.sql_server_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.sql_server_name]
}

# Virtual Network Name
output "vnet_name" {
  description = "Generated Virtual Network name"
  value       = module.vnet_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.vnet_name]
}

# Subnet Name
output "subnet_name" {
  description = "Generated Subnet name"
  value       = module.subnet_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.subnet_name]
}

# Show region abbreviation
output "rg_region_abbreviation" {
  description = "Abbreviated region code"
  value       = module.resource_group_name.region_short
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.resource_group_name]
}

# Show Network Security Group Name
output "nsg_name" {
  description = "Generated Network Security Group name"
  value       = module.nsg_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.nsg_name]
}
# Show Public IP Name
output "public_ip_name" {
  description = "Generated Public IP name"
  value       = module.public_ip_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.public_ip_name]
}
# Show Load Balancer Name
output "load_balancer_name" {
  description = "Generated Load Balancer name"
  value       = module.load_balancer_name.name
  sensitive   = false
  ephemeral   = false
  depends_on  = [module.load_balancer_name]
}
#