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
  default = "genesis-fs-server"
  description = "genesis fs"
}
variable "flexible-server-username" {
  type = string
  default = "psqladmin"

}
variable "flexible-server-password" {
  type = string
  default = "H@Sh1CoR3!"

}
variable "flexible-server-db-name" {
type = string 
default= "genesis-fs-server-db"
description = "genesis fs db"
}

  

