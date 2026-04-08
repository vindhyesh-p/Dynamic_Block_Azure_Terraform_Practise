variable "rg_names" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet_names" {
  type = map(object({
    name          = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
}

variable "subnet_names" {
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
}
