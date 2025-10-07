# module's provider requirement (module can declare required_providers, or root can)
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}


resource "local_file" "router_cfg" {
  for_each = var.routers

  filename = "${var.configs_dir}/${each.key}.cfg"
  content  = templatefile("${path.module}/router.tpl", {
    hostname   = each.value.hostname
    interfaces = each.value.interfaces
    loopback   = each.value.loopback
  })
}
