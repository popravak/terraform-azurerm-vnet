

variable "rg_name" {
  description = "Resource group name. Example: rgspo001"
  type        = string
  default     = "rgspo001"
}

variable "location" {
  description = "Resource Group Location. Example: northeurope"
  type        = string
  default     = "northeurope"
}

variable "vnet_address_space" {
  description = <<EOF
  List of vNet Prefixes.
  Examle:
  vnet_address_space   = ["10.0.0.0/16", "192.168.0.0/16"]
  EOF
  type        = list(string)
  default     = ["172.16.0.0/12"]
}

variable "subnets" {
  description = <<EOF
  Names and Prefixes of Subnets.
  Example:
  subnets = {
    "front" = { subnet = ["10.0.0.0/24"] },
    "middle" = { subnet = ["10.0.1.0/24"] },
    "back" = { subnet = ["10.0.2.0/24"] },
    "bastion" = { subnet = ["192.168.0.0/24"] }
  }
  EOF
  type        = map(any)
  default = {
    "front" = { subnet = ["172.16.0.0/24"] },
    "back"  = { subnet = ["172.16.1.0/24"] }
  }
}

variable "business_unit_prefix" {
  description = "Business Unit Prefix. Example: IT"
  type        = string
  default     = "IT"
}

variable "environment_prefix" {
  description = "Environment Prefix. Example: dev"
  type        = string
  default     = "dev"
}

variable "tags" {
  description = <<EOF
    Tags.
    Example:
    tags     = {
      "unit"  = "IT"
      "env"   = "dev"
      "owner" = "Sasa Popravak"
    }
    EOF
  type        = map(string)
  default = {
    "unit" = "it"
    "env"  = "dev"
    owner  = "Sasa Popravak"
  }
}
