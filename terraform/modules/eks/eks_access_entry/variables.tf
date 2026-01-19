
##################################################
###### Added after Terraform running state #######
##################################################

variable "eks_access_entry_cluster_name" {
  description = "EKS Access Entry Cluster Name"
  type        = string
  default     = null
}

variable "eks_access_entry_kubernetes_groups" {
  description = "EKS Access Entry K8s groups"
  type        = list(string)
  default     = []
}

variable "eks_access_entry_principal_arn" {
  description = "EKS Access Entry Role Name"
  type        = string
  default     = null
}

variable "eks_access_entry_type" {
  description = "EKS Access Entry TYPE Name"
  type        = string
  default     = null
}

variable "eks_access_entry_user_name" {
  description = "EKS Access Entry USER NAME"
  type        = string
  default     = null
}

variable "eks_access_entry_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "eks_access_entry_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}