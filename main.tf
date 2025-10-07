terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

# Local value for configs directory
locals {
  configs_dir = "${path.module}/configs"
}

# Call the reusable Cisco Router module
module "cisco_router" {
  source      = "./modules/cisco_router"
  routers     = var.routers
  configs_dir = local.configs_dir
}


