# Azure Naming Module

A Terraform module for generating standardized Azure resource names following Microsoft's naming best practices and conventions.

## Features

- Generates consistent naming patterns for Azure resources
- Supports all major Azure regions with abbreviations
- Configurable prefix and suffix
- Instance numbering for multiple resource instances
- Maximum length enforcement for resources with naming constraints
- Support for names with and without dashes (e.g., storage accounts)

## Usage

### Basic Example

```hcl
module "resource_group_name" {
  source = "github.com/gmirsky/azure_naming"

  resource_type = "rg"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
}

output "rg_name" {
  value = module.resource_group_name.name
  # Output: rg-myapp-prod-eus
}
```

### Storage Account Example (without dashes)

```hcl
module "storage_account_name" {
  source = "github.com/gmirsky/azure_naming"

  resource_type = "st"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  max_length    = 24
}

output "storage_name" {
  value = module.storage_account_name.name_no_dashes
  # Output: stmyappprodeus
}
```

### With Instance Number

```hcl
module "vm_name" {
  source = "github.com/gmirsky/azure_naming"

  resource_type   = "vm"
  workload        = "myapp"
  environment     = "prod"
  location        = "eastus"
  instance_number = 1
}

output "vm_name" {
  value = module.vm_name.name
  # Output: vm-myapp-prod-eus-001
}
```

### With Prefix and Suffix

```hcl
module "sql_server_name" {
  source = "github.com/gmirsky/azure_naming"

  resource_type = "sql"
  workload      = "myapp"
  environment   = "prod"
  location      = "eastus"
  prefix        = "contoso"
  suffix        = "primary"
}

output "sql_name" {
  value = module.sql_server_name.name
  # Output: contoso-sql-myapp-prod-eus-primary
}
```

## Naming Convention

The module follows this naming pattern:

```
[prefix-]<resource_type>-<workload>-<environment>-<region>[-instance][-suffix]
```

- **prefix** (optional): Custom prefix for organizational naming
- **resource_type** (required): Azure resource type abbreviation (e.g., rg, vm, st)
- **workload** (required): Application or workload name
- **environment** (required): Environment identifier (e.g., dev, test, prod)
- **region** (required): Azure region (abbreviated automatically)
- **instance** (optional): Instance number (001-999)
- **suffix** (optional): Custom suffix for additional context

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| resource_type | The type of Azure resource (e.g., rg, vm, st, kv) | `string` | n/a | yes |
| workload | The workload or application name | `string` | n/a | yes |
| environment | The environment (e.g., dev, test, prod) | `string` | n/a | yes |
| location | Azure region where the resource will be deployed | `string` | n/a | yes |
| prefix | Optional prefix to add to the resource name | `string` | `""` | no |
| suffix | Optional suffix to add to the resource name | `string` | `""` | no |
| instance_number | Instance number for resources that require multiple instances (0 means no instance number) | `number` | `0` | no |
| max_length | Maximum length for the generated name (0 means no limit) | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The generated resource name with dashes |
| name_no_dashes | The generated resource name without dashes (useful for storage accounts) |
| region_short | The abbreviated region code |
| base_name | The base name without instance number |

## Supported Azure Regions

The module includes abbreviations for all major Azure regions:

- US: eastus, eastus2, westus, westus2, westus3, centralus, etc.
- Europe: northeurope, westeurope, uksouth, ukwest, etc.
- Asia Pacific: eastasia, southeastasia, japaneast, australiaeast, etc.
- And many more...

## Common Resource Type Abbreviations

| Resource Type | Abbreviation |
|---------------|--------------|
| Resource Group | rg |
| Virtual Machine | vm |
| Storage Account | st |
| Key Vault | kv |
| Virtual Network | vnet |
| Subnet | snet |
| Network Security Group | nsg |
| App Service | app |
| SQL Server | sql |
| Azure Kubernetes Service | aks |

## Examples

See the [examples](./examples) directory for complete usage examples.

## Testing

See the [test](./test) directory for information about testing this module.

## Requirements

- Terraform >= 1.0

## License

See [LICENSE](./LICENSE) for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
