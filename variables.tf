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
  default = {
    R1 = {
      hostname = "R1"
      loopback = "1.1.1.1"
      interfaces = [
        { name = "GigabitEthernet0/0", ip = "10.0.1.1", mask = "255.255.255.0", state = "up" },
        { name = "GigabitEthernet0/1", ip = "10.0.2.1", mask = "255.255.255.0", state = "down" }
      ]
    }
    R2 = {
      hostname = "R2"
      loopback = "2.2.2.2"
      interfaces = [
        { name = "GigabitEthernet0/0", ip = "10.0.3.1", mask = "255.255.255.0", state = "up" }
      ]
    }
    R3 = {
      hostname = "R3"
      loopback = "3.3.3.3"
      interfaces = [
        { name = "GigabitEthernet0/0", ip = "10.0.4.1", mask = "255.255.255.0", state = "up" },
        { name = "GigabitEthernet0/1", ip = "10.0.5.1", mask = "255.255.255.0", state = "up" }
      ]
    }
  }
}
