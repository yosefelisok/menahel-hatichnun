##############################
# VPC - Subnets menahel-hatichnun
##############################

variable "vpc_menahel-hatichnun_name" {
  type        = string
  description = "VPC name (exist in TAGs into 'Name' tag)"
}

variable "vpc_menahel-hatichnun_cidr" {
  type        = string
  description = "VPC gsoc CIDR"
}

variable "vpc_menahel-hatichnun_azs" {
  type        = list(string)
  description = "Availability Zones for VPC subnets"
}

variable "vpc_menahel-hatichnun_private_subnets"{
  type = map(object({
    ip    = string
    name  = string
  }))
}

variable "vpc_menahel-hatichnun_public_subnets"{
  type = map(object({
    ip    = string
    name  = string
  }))
}

variable "route_table_app_name_menahel-hatichnun" {
  type = string
  description = "Application Route Table name"
}