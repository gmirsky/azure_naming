# Complete Example - Azure Naming Module

This example demonstrates how to use the Azure Naming module to generate standardized names for various Azure resources.

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## Outputs

The example will output generated names for various Azure resources using the following order:

1. Prefix
2. Resource Type Abbreviation
3. Workload/Project Identifier
4. Environment
5. Azure Region
6. Instance Number (if specified)
7. Suffix (if specified)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.13.4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app_service_name"></a> [app\_service\_name](#module\_app\_service\_name) | ../.. | n/a |
| <a name="module_key_vault_name"></a> [key\_vault\_name](#module\_key\_vault\_name) | ../.. | n/a |
| <a name="module_load_balancer_name"></a> [load\_balancer\_name](#module\_load\_balancer\_name) | ../.. | n/a |
| <a name="module_nsg_name"></a> [nsg\_name](#module\_nsg\_name) | ../.. | n/a |
| <a name="module_public_ip_name"></a> [public\_ip\_name](#module\_public\_ip\_name) | ../.. | n/a |
| <a name="module_resource_group_name"></a> [resource\_group\_name](#module\_resource\_group\_name) | ../.. | n/a |
| <a name="module_sql_server_name"></a> [sql\_server\_name](#module\_sql\_server\_name) | ../.. | n/a |
| <a name="module_storage_account_name"></a> [storage\_account\_name](#module\_storage\_account\_name) | ../.. | n/a |
| <a name="module_subnet_name"></a> [subnet\_name](#module\_subnet\_name) | ../.. | n/a |
| <a name="module_vm_name_linux_1"></a> [vm\_name\_linux\_1](#module\_vm\_name\_linux\_1) | ../.. | n/a |
| <a name="module_vm_name_linux_2"></a> [vm\_name\_linux\_2](#module\_vm\_name\_linux\_2) | ../.. | n/a |
| <a name="module_vm_name_windows_1"></a> [vm\_name\_windows\_1](#module\_vm\_name\_windows\_1) | ../.. | n/a |
| <a name="module_vnet_name"></a> [vnet\_name](#module\_vnet\_name) | ../.. | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_name"></a> [app\_service\_name](#output\_app\_service\_name) | Generated App Service name with prefix |
| <a name="output_load_balancer_name"></a> [load\_balancer\_name](#output\_load\_balancer\_name) | Generated Load Balancer name |
| <a name="output_nsg_name"></a> [nsg\_name](#output\_nsg\_name) | Generated Network Security Group name |
| <a name="output_public_ip_name"></a> [public\_ip\_name](#output\_public\_ip\_name) | Generated Public IP name |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Generated resource group name |
| <a name="output_rg_region_abbreviation"></a> [rg\_region\_abbreviation](#output\_rg\_region\_abbreviation) | Abbreviated region code |
| <a name="output_sql_server_name"></a> [sql\_server\_name](#output\_sql\_server\_name) | Generated SQL Server name with suffix |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | Generated storage account name (without dashes) |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Generated Subnet name |
| <a name="output_vm_name_linux_1"></a> [vm\_name\_linux\_1](#output\_vm\_name\_linux\_1) | Generated VM name with instance number |
| <a name="output_vm_name_linux_2"></a> [vm\_name\_linux\_2](#output\_vm\_name\_linux\_2) | Generated VM name with instance number |
| <a name="output_vm_name_windows_1"></a> [vm\_name\_windows\_1](#output\_vm\_name\_windows\_1) | Generated Windows VM name with instance number |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Generated Virtual Network name |
<!-- END_TF_DOCS -->