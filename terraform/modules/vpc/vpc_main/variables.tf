

##################################################
###### Added after Terraform running state #######
##################################################

variable "cidr_block_range" {
  description = "The VPC ip's address range"
  type        = string
  default     = null
}

variable "vpc_name" {
  type        = string
  description = "VPC name (exist in TAGs into 'Name' tag)"
  
  validation {
    condition     = can(regex("^[\\w\\d_-]{1,30}-(dev|test|preprod|prod|infra)-vpc-[\\d]{1,4}$", var.vpc_name))
    error_message = "The value of the name does not match the name convention : ^[\\w\\d_-]{1,30}-(dev|test|preprod|prod|infra)-vpc-[\\d]{1,4}$"
  }
}

variable "vpc_tags" {
  description = "The TAGs parameters"
  type        = map (string)
   default     = {}
}

variable "vpc_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}

variable "destination_cidr_block" {
  description = "ip of cidr block"
  type        = string
  default     = null
}





