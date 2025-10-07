output "generated_files" {
  description = "Map of routers to generated config file paths"
  value = {
    for name, r in local_file.router_cfg :
    name => r.filename
  }
}

output "generated_files_list" {
  description = "List of generated config file paths (useful for scripts)"
  value = [for f in local_file.router_cfg : f.filename]
}
