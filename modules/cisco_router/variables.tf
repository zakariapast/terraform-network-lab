variable "routers" {
  description = "Map of routers and their configurations"
  type = map(object({
    hostname   = string
    loopback   = string
    interfaces = list(object({
      name  = string
      ip    = string
      mask  = string
      state = string
    }))
  }))
}

variable "configs_dir" {
  description = "Directory path where generated configs will be written (root should pass this)"
  type        = string
}
