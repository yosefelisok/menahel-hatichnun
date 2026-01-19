
##################################################
###### Added after Terraform running state #######
##################################################

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = null
}

variable "addon_name" {
  description = "EKS AddOn VPC CNI Name"
  type        = string
  default     = null
}

variable "addon_version" {
  description = "EKS AddOn VPC CNI Version"
  type        = string
  default     = null
}

variable "addon_configuration_values" {
  description = "EKS AddOn VPC CNI Configuration Values"
  type        = string
  default     = null
}

variable "addon_service_account_role_arn" {
  description = "EKS AddOn VPC CNI Service account Role ARN"
  type        = string
  default     = null
}

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