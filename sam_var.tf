variable "rg-name" {
    type = string
    default = "rg-genesis"
    description = "resource group name"
}

variable "rg-location"{
    type = string
    default ="uk south"
    description = "resource group location"  
}

variable "vnet-name" {
  type = string
  default = "vnet-genesis"
  description = "genesis vnet"
}

variable "subnet-name"{
    type = string
    default = "subnet-genesis"
    description = "genesis subnet"
}

variable "flexible-server-name" {
  type = string
  default = "fs-server-genesis"
  description = "genesis fs name"
}

variable "flexible-server-username" {
  type = string
  default = "psqladmin"
  description = "genesis fs username"

}
variable "flexible-server-password" {
  type = string
  default = "H@Sh1CoR3!"
  description = "genesis fs password"

}
variable "flexible-server-db-name" {
type = string 
default= "fs-server-db-genesis"
description = "genesis fs db name"
}

variable "nsg-name" {
type = string
default = "nsg-genesis"
description = "genesis-nsg name"

}
variable "windows-vm-name" {
  type = string
  default = "win-vm-genesis"
  description = "genesis-win-vm"
}

variable "windows-vm-username"{
    type = string
    default = "azureuser"
    description = "genesis windows vm username"
}

variable "windows-vm-password" {
  type = string
  default = "Azure123!"
  description = "genesis windows vm password"
}

variable "keyvault-name" {
  type = string
  default = "kv-genesis"
  description = "genesis-keyvault"
}

variable "windows-nic-name" {
  type = string
  default = "win-nic-genesis"
  description = "genesis-win-nic"
}