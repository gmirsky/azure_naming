# Outputs

output "name" {
  description = "The generated resource name with dashes"
  value       = lower(local.final_name)
}

output "name_no_dashes" {
  description = "The generated resource name without dashes (useful for storage accounts)"
  value       = lower(local.name_no_dashes)
}

output "region_short" {
  description = "The abbreviated region code"
  value       = lower(local.region_short)
}

output "base_name" {
  description = "The base name without instance number"
  value       = lower(local.base_name)
}
