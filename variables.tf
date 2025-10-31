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
