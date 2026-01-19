# ##############################
# # IAM
# ##############################


variable "iam_eks_cluster_role_name" {
  description = "IAM role name"
  type        = string
}

variable "iam_eks_AmazonEKSClusterPolicy_policy_arn" {
  description = "IAM EKS cluster policy arn name"
  type        = string
}

variable "iam_eks_principals_aws_identifier_arn" {
  description = "IAM Policy principals AWS Identifuers user arn"
  type        = string
}

variable "iam_policy_eks_pod_identity_policy_description" {
  description = "policy description"
  type = string
  
}

variable "iam_policy_eks_pod_identity_policy_name" {
  description = "iam policy name"
  type = string
  
}

#---------------- EKS EC2 IAM Role ----------------------

variable "iam_eks_ec2_node_group_role_name" {
  description = "IAM role NAME"
  type        = string
}

variable "iam_eks_AmazonEKSWorkerNodePolicy_policy_arn" {
  description = "IAM EKS cluster policy arn name"
  type        = string
}

variable "iam_eks_AmazonEKS_CNI_Policy_policy_arn" {
  description = "IAM Role Policy attachment AmazonEKS CNI Policy"
  type        = string
}

variable "iam_eks_AmazonEC2ContainerRegistryReadOnly_policy_arn" {
  description = "IAM Role Policy attachment AmazonEC2ContainerRegistryReadOnly"
  type        = string
}

variable "iam_eks_AmazonSSMManagedInstanceCore_policy_arn" {
  description = "IAM Role Policy attachment AmazonSSMManagedInstanceCore"
  type        = string
}


##################################################
# EKS Cluster
##################################################

variable "eks_cluster_enabled_cluster_log_types" {
  description = "EKS enabled cluster Log Types"
  type = list(string)
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = null
}

# variable "eks_cluster_role_name" {
#   description = "EKS Cluster Role Name"
#   type        = string
#   default     = null
# }

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

#----------------------- policy association  -------------------------------

variable "eks_access_policy_association_policy_arn_EKSAdminPolicy" {
  description = "EKS Access Policy Association policy ARN Name"
  type        = string
}

variable "eks_access_policy_association_policy_arn_EKSClusterAdminPolicy" {
  description = "EKS Access Policy Association policy ARN Name"
  type        = string
}

variable "eks_access_entry_policy_association_access_scope_type" {
  description = "EKS Access Policy Association Access scope TYPE"
  type        = string
}

##################################################
# EKS AddONs
##################################################

#---------------- VPC - CNI ----------------------

variable "eks_vpc-cni_addon_name" {
  description = "EKS AddOn VPC CNI Name"
  type        = string
}

variable "eks_vpc-cni_addon_version" {
  description = "EKS AddOn VPC CNI Version"
  type        = string
}

#----------------- KUBE Proxy ----------------------

variable "eks_kube-proxy_addon_name" {
  description = "EKS AddOn Kube Proxy Name"
  type        = string
}

variable "eks_kube-proxy_addon_version" {
  description = "EKS AddOn Kube Proxy Version"
  type        = string
}

#------------------- CoreDNS -------------------------

variable "eks_coredns_addon_name" {
  description = "EKS AddOn CoreDns Name"
  type        = string
}

variable "eks_coredns_addon_version" {
  description = "EKS AddOn CoreDns Version"
  type        = string
}


##################################################
# EKS NODE Group
##################################################

variable "eks_node_group_ami_type" {
  description = "EKS Node Group AMI type Name"
  type        = string
}

variable "eks_node_group_capacity_type" {
  description = "EKS Node Group Capacity type Name"
  type        = string
}

variable "eks_node_group_disk_size" {
  description = "EKS Node Group Instance DISC Size"
  type        = number
}

variable "eks_node_group_instance_types" {
  description = "EKS Node Group Instance type"
  type        = list(string)
}

variable "eks_node_group_labels" {
  description = "EKS Node Group labels"
  type        = map (string)
}

variable "eks_node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "eks_node_group_name_prefix" {
  description = "EKS Node Group Name prefix"
  type        = string
}

variable "eks_node_group_release_version" {
  description = "EKS Node Group Release Version"
  type        = string
}

variable "eks_node_group_version" {
  description = "EKS Node Group Version"
  type        = string
}

variable "eks_node_group_scaling_config_desired_size" {
  description = "EKS Node Group Scaling Config desired size"
  type        = number
}

variable "eks_node_group_scaling_config_max_size" {
  description = "EKS Node Group Scaling Config max size"
  type        = number
}

variable "eks_node_group_scaling_config_min_size" {
  description = "EKS Node Group Scaling Config min size"
  type        = number
}