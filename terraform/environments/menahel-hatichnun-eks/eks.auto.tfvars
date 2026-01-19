##################################################
# IAM EKS
##################################################

iam_eks_ec2_node_group_role_name  = "EKSNodeGroupRole"
iam_eks_cluster_role_name         = "EKSClusterRole"

iam_eks_AmazonEKSClusterPolicy_policy_arn             = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
iam_eks_AmazonEKSWorkerNodePolicy_policy_arn          = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
iam_eks_AmazonEKS_CNI_Policy_policy_arn               = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
iam_eks_AmazonEC2ContainerRegistryReadOnly_policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
iam_eks_AmazonSSMManagedInstanceCore_policy_arn       = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"


##################################################
# EKS Cluster
##################################################

eks_cluster_enabled_cluster_log_types = ["api", 
                                         "audit", 
                                         "authenticator", 
                                         "controllerManager", 
                                         "scheduler"]
eks_cluster_name = "menahel-hatichnun-prod-eks-1"

eks_cluster_version                                     = "1.32"
eks_cluster_access_config_authentication_mode           = "API_AND_CONFIG_MAP"
eks_cluster_kubernetes_network_config_ip_family         = "ipv4"
eks_cluster_kubernetes_network_config_service_ipv4_cidr = "172.20.0.0/16"
eks_cluster_vpc_config_endpoint_private_access          = true
eks_cluster_vpc_config_endpoint_public_access           = false
eks_cluster_vpc_config_public_access_cidrs              = ["0.0.0.0/0"]




#----------------------- policy association  -------------------------------

eks_access_policy_association_policy_arn_EKSClusterAdminPolicy = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
eks_access_policy_association_policy_arn_EKSAdminPolicy        = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
eks_access_entry_policy_association_access_scope_type          = "cluster"

##################################################
# EKS AddONs
##################################################

#---------------- VPC - CNI ----------------------

eks_vpc-cni_addon_name    = "vpc-cni"
eks_vpc-cni_addon_version = "v1.18.6-eksbuild.1" 

#----------------- KUBE Proxy ----------------------

eks_kube-proxy_addon_name    = "kube-proxy"
eks_kube-proxy_addon_version = "v1.29.9-eksbuild.1"

#------------------- CoreDNS -------------------------

eks_coredns_addon_name    = "coredns"
eks_coredns_addon_version = "v1.11.3-eksbuild.2"

##################################################
# EKS NODE Group
##################################################

eks_node_group_name            = "menahel-hatichnun-eks-node-group"
eks_node_group_name_prefix     = null
eks_node_group_release_version = "1.31.0-20241106"
eks_node_group_version         = "1.31"

eks_node_group_ami_type        = "AL2_x86_64"
eks_node_group_capacity_type   = "ON_DEMAND"
eks_node_group_disk_size       = 20
eks_node_group_instance_types  = ["t3.medium",]
eks_node_group_labels          = {}

eks_node_group_scaling_config_desired_size = 2
eks_node_group_scaling_config_max_size     = 3
eks_node_group_scaling_config_min_size     = 1

##################################################
# EC2 MNG
##################################################

ec2_ami_image               = "ami-04a4b28d712600827"
availability_zone_name      = "il-central-1a"
ec2_instance_type           = "t3.large"
# iam_instance_profile        = "AWSCloud9SSMInstanceProfile"
ec2_instance_monitoring     = true

ec2_eks_mng_role_name = "menahel-hatichnun_ec2_eks_mng_role"
ec2_eks_mng_description = "role for attach ec2 of eks mng"