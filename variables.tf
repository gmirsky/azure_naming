# Required Variables

variable "resource_type" {
  description = "The type of Azure resource (e.g., rg, vm, st, kv, etc.)"
  type        = string
}

variable "workload" {
  description = "The workload or application name"
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, test, prod)"
  type        = string
}

variable "location" {
  description = "Azure region where the resource will be deployed"
  type        = string

  validation {
    condition = contains([
      "eastus", "eastus2", "westus", "westus2", "westus3",
      "centralus", "northcentralus", "southcentralus", "westcentralus",
      "canadacentral", "canadaeast", "brazilsouth",
      "northeurope", "westeurope", "uksouth", "ukwest",
      "francecentral", "francesouth", "germanycentral", "germanynorth",
      "switzerlandnorth", "switzerlandwest", "norwayeast", "norwaywest",
      "eastasia", "southeastasia", "japaneast", "japanwest",
      "australiaeast", "australiasoutheast", "australiacentral", "australiacentral2",
      "centralindia", "southindia", "westindia",
      "koreacentral", "koreasouth",
      "uaenorth", "uaecentral",
      "southafricanorth", "southafricawest"
    ], var.location)
    error_message = "Location must be a valid Azure region. See the README for supported regions."
  }
}

# Optional Variables

variable "prefix" {
  description = "Optional prefix to add to the resource name"
  type        = string
  default     = ""
}

variable "suffix" {
  description = "Optional suffix to add to the resource name"
  type        = string
  default     = ""
}

variable "instance_number" {
  description = "Instance number for resources that require multiple instances (0 means no instance number)"
  type        = number
  default     = 0

  validation {
    condition     = var.instance_number >= 0 && var.instance_number <= 999
    error_message = "Instance number must be between 0 and 999."
  }
}

variable "max_length" {
  description = "Maximum length for the generated name (0 means no limit)"
  type        = number
  default     = 0

  validation {
    condition     = var.max_length >= 0
    error_message = "Maximum length must be a non-negative number."
  }
}
