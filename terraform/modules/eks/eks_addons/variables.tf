
##################################################
###### Added after Terraform running state #######
##################################################

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = null
}

#---------------- VPC - CNI ----------------------

variable "eks_vpc-cni_addon_name" {
  description = "EKS AddOn VPC CNI Name"
  type        = string
  default     = null
}

variable "eks_vpc-cni_addon_version" {
  description = "EKS AddOn VPC CNI Version"
  type        = string
  default     = null
}

variable "eks_vpc-cni_addon_configuration_values" {
  description = "EKS AddOn VPC CNI Configuration Values"
  type        = string
  default     = null
}

variable "eks_vpc-cni_addon_service_account_role_arn" {
  description = "EKS AddOn VPC CNI Service account Role ARN"
  type        = string
  default     = null
}

#----------------- KUBE Proxy ----------------------

variable "eks_kube-proxy_addon_name" {
  description = "EKS AddOn Kube Proxy Name"
  type        = string
  default     = null
}

variable "eks_kube-proxy_addon_version" {
  description = "EKS AddOn Kube Proxy Version"
  type        = string
  default     = null
}

variable "eks_kube-proxy_addon_configuration_values" {
  description = "EKS AddOn Kube Proxy Configuration Values"
  type        = string
  default     = null
}

variable "eks_kube-proxy_addon_service_account_role_arn" {
  description = "EKS AddOn Kube Proxy Service account Role ARN"
  type        = string
  default     = null
}

#------------------- CoreDNS -------------------------

variable "eks_coredns_addon_name" {
  description = "EKS AddOn CoreDns Name"
  type        = string
  default     = null
}

variable "eks_coredns_addon_version" {
  description = "EKS AddOn CoreDns Version"
  type        = string
  default     = null
}

variable "eks_coredns_addon_configuration_values" {
  description = "EKS AddOn CoreDns Configuration Values"
  type        = string
  default     = null
}

variable "eks_coredns_addon_service_account_role_arn" {
  description = "EKS AddOn CoreDns Service account Role ARN"
  type        = string
  default     = null
}

#-------------------------------------------------

variable "eks_addon_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "eks_addon_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}