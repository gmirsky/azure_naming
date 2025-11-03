output "name" {
  description = "The generated resource name with dashes"
  value       = lower(local.final_name)
  sensitive   = false
  ephemeral   = false
}
#
output "name_no_dashes" {
  description = "The generated resource name without dashes (useful for storage accounts)"
  value       = lower(local.name_no_dashes)
  sensitive   = false
  ephemeral   = false
}
#
output "region_short" {
  description = "The abbreviated region code"
  value       = lower(local.region_short)
  sensitive   = false
  ephemeral   = false
}
#
output "base_name" {
  description = "The base name without instance number"
  value       = lower(local.base_name)
  sensitive   = false
  ephemeral   = false
}
#
