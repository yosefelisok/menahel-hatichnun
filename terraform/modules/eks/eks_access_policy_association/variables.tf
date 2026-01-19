variable "eks_access_policy_association_cluster_name" {
  description = "EKS Access Policy Association Cluster Name"
  type        = string
  default     = null
}

variable "eks_access_policy_association_policy_arn" {
  description = "EKS Access Policy Association policy ARN Name"
  type        = string
  default     = null
}

variable "eks_access_policy_association_principal_arn" {
  description = "EKS Access Policy Association principal ARN Name"
  type        = string
  default     = null
}

variable "eks_access_entry_policy_association_access_scope_namespaces" {
  description = "EKS Access Policy Association Access scope NAMESPACES"
  type        = list(string)
  default     = []
}

variable "eks_access_entry_policy_association_access_scope_type" {
  description = "EKS Access Policy Association Access scope TYPE"
  type        = string
  default     = null
}
