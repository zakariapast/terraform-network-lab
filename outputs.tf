output "generated_configs" {
  description = "Map of routers to generated config file paths (from module)"
  value       = module.cisco_router.generated_files
}

output "generated_configs_list" {
  description = "List of generated config file paths (from module)"
  value       = module.cisco_router.generated_files_list
}
