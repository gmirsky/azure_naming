variable "resource_type" {
  description = <<EOT
The type of Azure resource (e.g., rg, vm, st, kv, etc.)

Complete reference table for supported Azure resource types:

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

EOT
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  validation {
    condition = contains(
      [
        "aaa",
        "aad",
        "aadds",
        "aadb2c",
        "acr",
        "acs",
        "adf",
        "adls",
        "afd",
        "ag",
        "aks",
        "alerts",
        "am",
        "amg",
        "analytics",
        "apim",
        "app",
        "appconfig",
        "appgw",
        "appi",
        "apps",
        "arc",
        "arg",
        "arm",
        "as",
        "asb",
        "asg",
        "asp",
        "asse",
        "automation",
        "avd",
        "azfw",
        "ba",
        "batch",
        "cdb",
        "cdn",
        "cer",
        "ci",
        "cm",
        "cn",
        "cosmos",
        "cr",
        "css",
        "cus",
        "databox",
        "databricks",
        "dce",
        "dcr",
        "dls",
        "dns",
        "er",
        "evgd",
        "evh",
        "fd",
        "func",
        "gal",
        "gallery",
        "gr",
        "hana",
        "hcp",
        "hdinsight",
        "hpc",
        "hub",
        "id",
        "img",
        "integration",
        "iot",
        "ip",
        "kv",
        "law",
        "lb",
        "lbi",
        "lg",
        "logic",
        "managed",
        "map",
        "mc",
        "ml",
        "monitor",
        "msi",
        "mysql",
        "natgw",
        "nsg",
        "nic",
        "pe",
        "pip",
        "plan",
        "policy",
        "postgresql",
        "private",
        "public",
        "redis",
        "rg",
        "route",
        "rsv",
        "rt",
        "sb",
        "search",
        "service",
        "sig",
        "sql",
        "sqldb",
        "sqlmi",
        "st",
        "stg",
        "storage",
        "subnet",
        "synapse",
        "tm",
        "traf",
        "udr",
        "vault",
        "vm",
        "vmss",
        "vnet",
        "vng",
        "vpn",
        "waf",
        "web"
      ],
      lower(var.resource_type)
    )
    error_message = <<EOT
Resource type must be a valid Azure resource abbreviation (e.g., rg, vm, st, kv, etc.)."

Azure resource types must be one of the following:

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

EOT
  }
  default = "rg"
}
#
variable "workload" {
  description = "The workload or application name"
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  default     = "workload"
}
#
variable "environment" {
  description = <<EOT
The environment (e.g., poc, dev, test, qa, beta, prod)
EOT
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  validation {
    condition = can(
      regex("poc|dev|test|qa|beta|prod",
        lower(var.environment)
      )
    )
    error_message = <<EOT
Environment must be of type: poc, dev, test, qa, beta, prod
EOT
  }
  default = "poc"
}
#
variable "location" {
  description = "Azure region where the resource(s) will be deployed"
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  validation {
    condition = contains(
      [
        "australiacentral",
        "australiacentral2",
        "australiaeast",
        "australiasoutheast",
        "brazilsouth",
        "canadacentral",
        "canadaeast",
        "centralindia",
        "centralus",
        "eastasia",
        "eastus",
        "eastus2",
        "francecentral",
        "francesouth",
        "germanycentral",
        "germanynorth",
        "japaneast",
        "japanwest",
        "koreacentral",
        "koreasouth",
        "northcentralus",
        "northeurope",
        "norwayeast",
        "norwaywest",
        "southafricanorth",
        "southafricawest",
        "southcentralus",
        "southeastasia",
        "southindia",
        "switzerlandnorth",
        "switzerlandwest",
        "uaecentral",
        "uaenorth",
        "uksouth",
        "ukwest",
        "westcentralus",
        "westeurope",
        "westindia",
        "westus",
        "westus2",
        "westus3",
      ],
      lower(var.location)
    )
    error_message = <<EOT
Location must be a valid Azure region (e.g., eastus, westus2, northeurope, etc.)

Valid Azure regions are:
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
EOT
  }
}
#
variable "prefix" {
  description = "The prefix to add to the resource name"
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  default     = "aztf"
}
#
variable "suffix" {
  description = <<EOT
Optional suffix to add to the resource name. 

Default is empty string (no suffix).
EOT
  type        = string
  sensitive   = false
  ephemeral   = false
  nullable    = false
  default     = ""
}
#
variable "instance_number" {
  description = <<EOT
Instance number for resources that require multiple instances (0 means no instance number)

Instance number must be between 0 and 999.

Default is 0.
EOT
  type        = number
  sensitive   = false
  ephemeral   = false
  nullable    = false
  default     = 0
  validation {
    condition     = var.instance_number >= 0 && var.instance_number <= 999
    error_message = "Instance number must be between 0 and 999."
  }
}
#
variable "max_length" {
  description = "Maximum length for the generated name (0 means no limit)"
  type        = number
  sensitive   = false
  ephemeral   = false
  nullable    = false
  default     = 0
  validation {
    condition     = var.max_length >= 0
    error_message = <<EOT
Maximum length must be a non-negative number.

Default is 0 (no limit).
EOT
  }
}
#
variable "dash" {
  description = "The dash character to use in the resource name"
  type = string
  sensitive = false
  ephemeral = false
  nullable = false
  default = "-"
}
#
variable "empty_string" {
  description = "An empty string variable for conditional concatenation"
  type = string
  sensitive = false
  ephemeral = false
  nullable = false
  default = ""
}
#