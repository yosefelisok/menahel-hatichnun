################################################################################
# Amazon EKS Modules
################################################################################

resource "aws_eks_cluster" "this" {
    enabled_cluster_log_types = var.eks_cluster_enabled_cluster_log_types
    name                      = var.eks_cluster_name
    
    role_arn                  = var.eks_cluster_role_name
    
    tags                      = var.eks_cluster_tags
    tags_all                  = var.eks_cluster_tags_all
    version                   = var.eks_cluster_version

    access_config {
        authentication_mode                         = var.eks_cluster_access_config_authentication_mode
        bootstrap_cluster_creator_admin_permissions = true
    }

    kubernetes_network_config {
        ip_family         = var.eks_cluster_kubernetes_network_config_ip_family
        service_ipv4_cidr = var.eks_cluster_kubernetes_network_config_service_ipv4_cidr
    }

    vpc_config {
        endpoint_private_access   = var.eks_cluster_vpc_config_endpoint_private_access
        endpoint_public_access    = var.eks_cluster_vpc_config_endpoint_public_access
        public_access_cidrs       = var.eks_cluster_vpc_config_public_access_cidrs
        security_group_ids        = var.eks_cluster_vpc_config_security_group_ids
        subnet_ids                = var.eks_cluster_vpc_config_subnet_ids
    }
}