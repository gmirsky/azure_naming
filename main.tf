# Azure Naming Module
# This module generates standardized names for Azure resources following best practices

locals {
  # Define Azure region abbreviations
  region_abbreviations = {
    "eastus"         = "eus"
    "eastus2"        = "eus2"
    "westus"         = "wus"
    "westus2"        = "wus2"
    "westus3"        = "wus3"
    "centralus"      = "cus"
    "northcentralus" = "ncus"
    "southcentralus" = "scus"
    "westcentralus"  = "wcus"
    "canadacentral"  = "cac"
    "canadaeast"     = "cae"
    "brazilsouth"    = "brs"
    "northeurope"    = "neu"
    "westeurope"     = "weu"
    "uksouth"        = "uks"
    "ukwest"         = "ukw"
    "francecentral"  = "frc"
    "francesouth"    = "frs"
    "germanycentral" = "gec"
    "germanynorth"   = "gen"
    "switzerlandnorth" = "swn"
    "switzerlandwest"  = "sww"
    "norwayeast"     = "noe"
    "norwaywest"     = "now"
    "eastasia"       = "eas"
    "southeastasia"  = "seas"
    "japaneast"      = "jpe"
    "japanwest"      = "jpw"
    "australiaeast"  = "aue"
    "australiasoutheast" = "ause"
    "australiacentral"   = "auc"
    "australiacentral2"  = "auc2"
    "centralindia"   = "inc"
    "southindia"     = "ins"
    "westindia"      = "inw"
    "koreacentral"   = "krc"
    "koreasouth"     = "krs"
    "uaenorth"       = "uaen"
    "uaecentral"     = "uaec"
    "southafricanorth" = "san"
    "southafricawest"  = "saw"
  }

  # Get region abbreviation or use full name if not found
  region_short = lookup(local.region_abbreviations, var.location, var.location)

  # Build name components
  prefix = var.prefix != "" ? "${var.prefix}-" : ""
  suffix = var.suffix != "" ? "-${var.suffix}" : ""
  
  # Generate base name pattern: [prefix-]resourcetype-workload-environment-region[-suffix]
  base_name = "${local.prefix}${var.resource_type}-${var.workload}-${var.environment}-${local.region_short}${local.suffix}"
  
  # Generate name with optional instance number: [prefix-]resourcetype-workload-environment-region-###[-suffix]
  name_with_instance = var.instance_number > 0 ? "${local.prefix}${var.resource_type}-${var.workload}-${var.environment}-${local.region_short}-${format("%03d", var.instance_number)}${local.suffix}" : local.base_name
  
  # Final name, ensuring it meets length requirements if max_length is specified
  # Note: Truncation occurs from the right, which may cut through name components.
  # Users should ensure max_length is sufficient to preserve meaningful identifiers.
  final_name = var.max_length > 0 ? substr(local.name_with_instance, 0, var.max_length) : local.name_with_instance
  
  # Generate name without dashes (for storage accounts, etc.)
  # Note: For resources with strict length limits (e.g., storage accounts with 24 chars),
  # ensure max_length is set appropriately before dash removal to maintain valid names.
  name_no_dashes = replace(local.final_name, "-", "")
}
