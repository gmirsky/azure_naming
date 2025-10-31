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

- australiacentral
- australiacentral2
- australiaeast
- australiasoutheast
- brazilsouth
- canadacentral
- canadaeast
- centralindia
- centralus
- eastasia
- eastus
- eastus2
- francecentral
- francesouth
- germanycentral
- germanynorth
- japaneast
- japanwest
- koreacentral
- koreasouth
- northcentralus
- northeurope
- norwayeast
- norwaywest
- southafricanorth
- southafricawest
- southcentralus
- southeastasia
- southindia
- switzerlandnorth
- switzerlandwest
- uaecentral
- uaenorth
- uksouth
- ukwest
- westcentralus
- westeurope
- westindia
- westus
- westus2
- westus3 

## Common Resource Type Abbreviations

|--------------|-------------------------------------------|
| Abbreviation | Azure Resource Type                       |
|--------------|-------------------------------------------|
| aaa          | Azure Active Directory Application        |
| aad          | Azure Active Directory                    |
| aadds        | Azure Active Directory Domain Services    |
| aadb2c       | Azure Active Directory B2C                |
| acr          | Azure Container Registry                  |
| acs          | Azure Container Service                   |
| adf          | Azure Data Factory                        |
| adls         | Azure Data Lake Storage                   |
| afd          | Azure Front Door                          |
| ag           | Application Gateway                       |
| aks          | Azure Kubernetes Service                  |
| alerts       | Azure Monitor Alerts                      |
| am           | Azure Monitor                             |
| amg          | Azure Managed Grafana                     |
| analytics    | Azure Analytics                           |
| apim         | API Management                            |
| app          | App Service                               |
| appconfig    | App Configuration                         |
| appgw        | Application Gateway                       |
| appi         | Application Insights                      |
| apps         | App Services                              |
| arc          | Azure Arc                                 |
| arg          | Azure Resource Graph                      |
| arm          | Azure Resource Manager                    |
| as           | Availability Set                          |
| asb          | Azure Service Bus                         |
| asg          | Application Security Group                |
| asp          | App Service Plan                          |
| asse         | App Service Environment                   |
| automation   | Azure Automation                          |
| avd          | Azure Virtual Desktop                     |
| azfw         | Azure Firewall                            |
| ba           | Backup Account                            |
| batch        | Azure Batch                               |
| cdb          | Cosmos DB                                 |
| cdn          | Content Delivery Network                  |
| cer          | Certificate                               |
| ci           | Container Instance                        |
| cm           | Configuration Manager                     |
| cn           | Container                                 |
| cosmos       | Cosmos DB                                 |
| cr           | Container Registry                        |
| css          | Cognitive Services                        |
| cus          | Custom                                    |
| databox      | Azure Data Box                            |
| databricks   | Azure Databricks                          |
| dce          | Data Collection Endpoint                  |
| dcr          | Data Collection Rule                      |
| dls          | Data Lake Storage                         |
| dns          | DNS Zone                                  |
| er           | ExpressRoute                              |
| evgd         | Event Grid Domain                         |
| evh          | Event Hub                                 |
| fd           | Front Door                                |
| func         | Azure Function                            |
| gal          | Gallery                                   |
| gallery      | Shared Image Gallery                      |
| gr           | Resource Group                            |
| hana         | SAP HANA                                  |
| hcp          | HPC Cache                                 |
| hdinsight    | HDInsight                                 |
| hpc          | High Performance Computing                |
| hub          | Hub                                       |
| id           | Identity                                  |
| img          | Image                                     |
| integration  | Integration Account                       |
| iot          | IoT Hub                                   |
| ip           | Public IP                                 |
| kv           | Key Vault                                 |
| law          | Log Analytics Workspace                   |
| lb           | Load Balancer                             |
| lbi          | Internal Load Balancer                    |
| lg           | Log Analytics                             |
| logic        | Logic App                                 |
| managed      | Managed Identity                          |
| map          | Azure Maps                                |
| mc           | Managed Cluster                           |
| ml           | Machine Learning                          |
| monitor      | Azure Monitor                             |
| msi          | Managed Service Identity                  |
| mysql        | MySQL Database                            |
| natgw        | NAT Gateway                               |
| nsg          | Network Security Group                    |
| nic          | Network Interface Card                    |
| pe           | Private Endpoint                          |
| pip          | Public IP                                 |
| plan         | App Service Plan                          |
| policy       | Policy                                    |
| postgresql   | PostgreSQL Database                       |
| private      | Private                                   |
| public       | Public                                    |
| redis        | Redis Cache                               |
| rg           | Resource Group                            |
| route        | Route Table                               |
| rsv          | Recovery Services Vault                   |
| rt           | Route Table                               |
| sb           | Service Bus                               |
| search       | Search Service                            |
| service      | Service                                   |
| sig          | Shared Image Gallery                      |
| sql          | SQL Server                                |
| sqldb        | SQL Database                              |
| sqlmi        | SQL Managed Instance                      |
| st           | Storage Account                           |
| stg          | Storage                                   |
| storage      | Storage Account                           |
| subnet       | Subnet                                    |
| synapse      | Azure Synapse                             |
| tm           | Traffic Manager                           |
| traf         | Traffic Manager                           |
| udr          | User Defined Route                        |
| vault        | Key Vault                                 |
| vm           | Virtual Machine                           |
| vmss         | Virtual Machine Scale Set                 |
| vnet         | Virtual Network                           |
| vng          | Virtual Network Gateway                   |
| vpn          | VPN Gateway                               |
| waf          | Web Application Firewall                  |
| web          | Web App                                   |
|--------------|-------------------------------------------|

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
