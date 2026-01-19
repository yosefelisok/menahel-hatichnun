
#Create EKS Cluster
module "eks_cluster" {
  source = "../../modules/eks/eks_cluster"

  eks_cluster_enabled_cluster_log_types                   = var.eks_cluster_enabled_cluster_log_types
  eks_cluster_name                                        = var.eks_cluster_name
  eks_cluster_role_name                                   = module.iam_eks_cluster_role.arn
  eks_cluster_version                                     = var.eks_cluster_version
  eks_cluster_access_config_authentication_mode           = var.eks_cluster_access_config_authentication_mode
  eks_cluster_kubernetes_network_config_ip_family         = var.eks_cluster_kubernetes_network_config_ip_family
  eks_cluster_kubernetes_network_config_service_ipv4_cidr = var.eks_cluster_kubernetes_network_config_service_ipv4_cidr
  eks_cluster_vpc_config_endpoint_private_access          = var.eks_cluster_vpc_config_endpoint_private_access
  eks_cluster_vpc_config_endpoint_public_access           = var.eks_cluster_vpc_config_endpoint_public_access
  eks_cluster_vpc_config_public_access_cidrs              = var.eks_cluster_vpc_config_public_access_cidrs
  eks_cluster_vpc_config_security_group_ids               = [module.sg_eks_cluster.id]

  eks_cluster_vpc_config_subnet_ids = [
    for s in values(module.subnets_private_menahel-hatichnun) : s.subnet_id
  ]

  eks_cluster_tags     = local.eks_tags
  eks_cluster_tags_all = local.eks_tags
}


#create EKS Access Policy Association
module "eks_access_policy_association_AmazonEKSAdminPolicy" {
  source = "../../modules/eks/eks_access_policy_association"

  eks_access_policy_association_cluster_name = module.eks_cluster.name
  eks_access_policy_association_principal_arn = module.eks_access_entry.principal_arn

  eks_access_policy_association_policy_arn = var.eks_access_policy_association_policy_arn_EKSAdminPolicy
  eks_access_entry_policy_association_access_scope_type = var.eks_access_entry_policy_association_access_scope_type
}

#create EKS Access Policy Association
module "eks_access_policy_association_AmazonEKSClusterAdminPolicy" {
  source = "../../modules/eks/eks_access_policy_association"

  eks_access_policy_association_cluster_name = module.eks_cluster.name
  eks_access_policy_association_principal_arn = module.eks_access_entry.principal_arn

  eks_access_policy_association_policy_arn = var.eks_access_policy_association_policy_arn_EKSClusterAdminPolicy
  eks_access_entry_policy_association_access_scope_type = var.eks_access_entry_policy_association_access_scope_type
}

#Create EKS Cluster AddONs
module "eks_addons" {
   source = "../../modules/eks/eks_addons"

   eks_cluster_name = module.eks_cluster.name

   eks_vpc-cni_addon_name    = var.eks_vpc-cni_addon_name
   eks_vpc-cni_addon_version = var.eks_vpc-cni_addon_version

   eks_kube-proxy_addon_name    = var.eks_kube-proxy_addon_name
   eks_kube-proxy_addon_version = var.eks_kube-proxy_addon_version
 
   eks_coredns_addon_name    = var.eks_coredns_addon_name
   eks_coredns_addon_version = var.eks_coredns_addon_version

   eks_addon_tags     = local.eks_addon_tags
   eks_addon_tags_all = local.eks_addon_tags
}


#Create EKS Node Group
module "eks_node_group" {
  source = "../../modules/eks/eks_node_group"

  eks_node_group_ami_type        = var.eks_node_group_ami_type
  eks_node_group_capacity_type   = var.eks_node_group_capacity_type
  eks_cluster_name               = module.eks_cluster.name
  eks_node_group_disk_size       = var.eks_node_group_disk_size
  eks_node_group_instance_types  = var.eks_node_group_instance_types
  eks_node_group_labels          = var.eks_node_group_labels
  eks_node_group_name            = var.eks_node_group_name
  eks_node_group_name_prefix     = var.eks_node_group_name_prefix
  eks_node_group_role_arn        = module.iam_eks_node_group_role.arn
  eks_node_group_release_version = var.eks_node_group_release_version

  eks_node_group_subnet_ids = [
    for s in values(module.subnets_private_menahel-hatichnun) : s.subnet_id
  ]

  eks_node_group_version                = var.eks_node_group_version
  eks_node_group_launch_template_version = "0"

  eks_node_group_tags     = local.eks_node_group_tags
  eks_node_group_tags_all = local.eks_node_group_tags

  eks_node_group_scaling_config_desired_size = var.eks_node_group_scaling_config_desired_size
  eks_node_group_scaling_config_max_size     = var.eks_node_group_scaling_config_max_size
  eks_node_group_scaling_config_min_size     = var.eks_node_group_scaling_config_min_size
}


#Create IAM EKSNodeGroupRole
module "iam_eks_node_group_role" {    
   source = "../../modules/iam/iam_role_no_valid"

   role_name        = var.iam_eks_ec2_node_group_role_name
   role_json_policy = data.aws_iam_policy_document.assume_eks_ec2.json

}

#Attach AmazonEKSWorkerNodePolicy policy to EKSNodeGroupRole
module "iam_eks_node_group_role_policy_attachment_AmazonEKSWorkerNodePolicy" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name  = module.iam_eks_node_group_role.name
  policy_arn = var.iam_eks_AmazonEKSWorkerNodePolicy_policy_arn

}

#Attach AmazonEKS_CNI_Policy policy to EKSNodeGroupRole
module "iam_eks_node_group_role_policy_attachment_AmazonEKS_CNI_Policy" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name  = module.iam_eks_node_group_role.name
  policy_arn = var.iam_eks_AmazonEKS_CNI_Policy_policy_arn

}

#Attach AmazonEC2ContainerRegistryReadOnly policy to EKSNodeGroupRole
module "iam_eks_node_group_role_policy_attachment_AmazonEC2ContainerRegistryReadOnly" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name = module.iam_eks_node_group_role.name
  policy_arn = var.iam_eks_AmazonEC2ContainerRegistryReadOnly_policy_arn

}

#Attach AmazonSSMManagedInstanceCore policy to EKSNodeGroupRole
module "iam_eks_node_group_role_policy_attachment_AmazonSSMManagedInstanceCore" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name = module.iam_eks_node_group_role.name
  policy_arn = var.iam_eks_AmazonSSMManagedInstanceCore_policy_arn

}

#Create IAM EKSClusterRole
module "iam_eks_cluster_role" {    
   source = "../../modules/iam/iam_role_no_valid"

   role_name        = var.iam_eks_cluster_role_name 
   role_json_policy = data.aws_iam_policy_document.assume_role.json  

  #  managed_policy_arns = [
  #          var.iam_eks_AmazonEKSClusterPolicy_policy_arn,
  #          var.iam_eks_AmazonEKSWorkerNodePolicy_policy_arn,
  #       ]
   
   iam_role_tags    = local.eks_iam_role_tags
}

#Attach AmazonEKSClusterPolicy policy to EKSClusterRole
module "iam_eks_cluster_role_policy_attachment_AmazonEKSClusterPolicy" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name  = module.iam_eks_cluster_role.name
  policy_arn = var.iam_eks_AmazonEKSClusterPolicy_policy_arn

}

#Attach AmazonEKSWorkerNodePolicy policy to EKSClusterRole
module "iam_eks_cluster_role_policy_attachment_AmazonEKSWorkerNodePolicy" {
  source = "../../modules/iam/iam_role_policy_attachment"

  role_name  = module.iam_eks_cluster_role.name
  policy_arn = var.iam_eks_AmazonEKSWorkerNodePolicy_policy_arn

}

#Create Security Group for EKS Cluster
module "sg_eks_cluster"{
   source = "../../modules/sg/sg_generic"

   sg_name = "eks-cluster-prod-sg-1"
   vpc_id  = module.vpc_menahel-hatichnun.id

   description = "SecurityGroup for EKS Cluster"

   ingress_rules = [
   {
        description = "443"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["10.233.80.0/24"]
    },
    {
        description = "80"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["10.233.80.0/24"]
    },
  ]

   egress_rules  = [
    {
      description = ""
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

   sg_tags     = local.sg_tags
   sg_tags_all = local.sg_tags
}
