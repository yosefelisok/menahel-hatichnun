
##################################################
###### Added after Terraform running state #######
##################################################

variable "eks_cluster_enabled_cluster_log_types" {
  description = "EKS enabled cluster Log Types"
  type = list(string)
  default = []  
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = null
}

variable "eks_cluster_role_name" {
  description = "EKS Cluster Role Name"
  type        = string
  default     = null
}

variable "eks_cluster_version" {
  description = "EKS Cluster Version number"
  type        = string
  default     = null
}

variable "eks_cluster_access_config_authentication_mode" {
  description = "EKS Cluster access config authentication mode"
  type        = string
  default     = null
}

variable "eks_cluster_kubernetes_network_config_ip_family" {
  description = "EKS Cluster kubernetes network config ip family name"
  type        = string
  default     = null
}

variable "eks_cluster_kubernetes_network_config_service_ipv4_cidr" {
  description = "EKS Cluster kubernetes network config service ipv4 CIDR"
  type        = string
  default     = null
}

variable "eks_cluster_vpc_config_endpoint_private_access" {
  description = "EKS Cluster vpc config endpoint PRIVATE Access"
  type        = bool
  default     = null
}

variable "eks_cluster_vpc_config_endpoint_public_access" {
  description = "EKS Cluster vpc config endpoint PUBLIC Access"
  type        = bool
  default     = null
}

variable "eks_cluster_vpc_config_public_access_cidrs" {
  description = "EKS Cluster vpc config public access CIDR"
  type        = list(string)
  default     = []
}

variable "eks_cluster_vpc_config_security_group_ids" {
  description = "EKS cluster vpc config security group ids"
  type        = list(string)
  default     = []
}

variable "eks_cluster_vpc_config_subnet_ids" {
  description = "EKS cluster vpc config Subnet IDS"
  type        = list(string)
  default     = []
}

variable "eks_cluster_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "eks_cluster_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}