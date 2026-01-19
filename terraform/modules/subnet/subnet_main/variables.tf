variable "cidr_block_range" {
  description = "The Subnet ip's address range"
  type        = string
  default     = null
}

variable "availability_zone_name" {
  description = "The Subnet availability zone name"
  type        = string
  default     = null
}

variable "subnet_name" {
  type        = string
  description = "VPC name (exist in TAGs into 'Name' tag)"
  
  validation {
    condition     = can(regex("^[\\w\\d_-]{1,30}-(dev|test|preprod|prod|infra)-sub-[\\d\\w]{1,4}$", var.subnet_name))
    error_message = "The value of the name does not match the name convention : ^[\\w\\d_-]{1,30}-(dev|test|preprod|prod|infra)-sub-[\\d\\w]{1,4}$"
  }
}

variable "vpc_id_number" {
  description = "The VPC ID number"
  type        = string
  default     = null
}

variable "private_dns_hostname_type_on_launch" {
  description = "Subnet private DNS hostname type on launch"
  type        = string
  default     = "ip-name"
}

variable "is_assign_ipv6_address_on_creation" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "is_enable_dns64" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "is_enable_resource_name_dns_a_record_on_launch" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "is_enable_resource_name_dns_aaaa_record_on_launch" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "is_ipv6_native" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "is_map_public_ip_on_launch" {
  description = "Boolian flag"
  type        = bool
  default     = false
}

variable "veeam_tags" {
  description = "The TAGs parameters"
  type        = map (string)
   default     = {
    "Veeam-backup" = "true"
  }
}

variable "subnet_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "subnet_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}

