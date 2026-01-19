
##################################################
###### Added after Terraform running state #######
##################################################

variable "eks_node_group_ami_type" {
  description = "EKS Node Group AMI type Name"
  type        = string
  default     = null
}

variable "eks_node_group_capacity_type" {
  description = "EKS Node Group Capacity type Name"
  type        = string
  default     = null
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = null
}

variable "eks_node_group_disk_size" {
  description = "EKS Node Group Instance DISC Size"
  type        = number
  default     = null
}

variable "eks_node_group_instance_types" {
  description = "EKS Node Group Instance type"
  type        = list(string)
  default     = []
}

variable "eks_node_group_labels" {
  description = "EKS Node Group labels"
  type        = map (string)
  default     = {}
}

variable "eks_node_group_name" {
  description = "EKS Node Group Name"
  type        = string
  default     = null
}

variable "eks_node_group_name_prefix" {
  description = "EKS Node Group Name prefix"
  type        = string
  default     = null
}

variable "eks_node_group_role_arn" {
  description = "EKS Node Group Role ARN"
  type        = string
  default     = null
}

variable "eks_node_group_release_version" {
  description = "EKS Node Group Release Version"
  type        = string
  default     = null
}

variable "eks_node_group_subnet_ids" {
  description = "EKS Node Group Subnet IDs"
  type        = list(string)
  default     = []
}

variable "eks_node_group_version" {
  description = "EKS Node Group Version"
  type        = string
  default     = null
}

variable "eks_node_group_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "eks_node_group_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}

variable "eks_node_group_scaling_config_desired_size" {
  description = "EKS Node Group Scaling Config desired size"
  type        = number
  default     = null
}

variable "eks_node_group_scaling_config_max_size" {
  description = "EKS Node Group Scaling Config max size"
  type        = number
  default     = null
}

variable "eks_node_group_scaling_config_min_size" {
  description = "EKS Node Group Scaling Config min size"
  type        = number
  default     = null
}

variable "eks_node_group_launch_template_id" {
  description = "EKS launch template ID"
  type        = string
  default     = null
}


variable "eks_node_group_launch_template_version" {
  description = "EKS launch template version"
  type        = number
  default     = null
}