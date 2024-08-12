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
    description = "gensis subnet"
}
variable "this_sql_fs-name" {
  type = string
  default = "this_sql_fs-geneis"
  description = "genesis fs"

}
