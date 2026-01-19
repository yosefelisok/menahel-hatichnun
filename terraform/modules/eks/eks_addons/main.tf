################################################################################
# Amazon EKS Modules
################################################################################

# aws_eks_addon.vpc-cni:
resource "aws_eks_addon" "vpc-cni" {
    addon_name               = var.eks_vpc-cni_addon_name
    addon_version            = var.eks_vpc-cni_addon_version
    
    cluster_name             = var.eks_cluster_name
    configuration_values     = var.eks_vpc-cni_addon_configuration_values

  #   configuration_values = jsonencode({
  #   replicaCount = 4
  #   resources = {
  #     limits = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #     requests = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #   }
  # })
    
    service_account_role_arn = var.eks_vpc-cni_addon_service_account_role_arn
    tags                     = var.eks_addon_tags
    tags_all                 = var.eks_addon_tags_all
}

# aws_eks_addon.kube-proxy:
resource "aws_eks_addon" "kube-proxy" {
    addon_name               = var.eks_kube-proxy_addon_name
    addon_version            = var.eks_kube-proxy_addon_version
    
    cluster_name             = var.eks_cluster_name
    configuration_values     = var.eks_kube-proxy_addon_configuration_values

  #   configuration_values = jsonencode({
  #   replicaCount = 4
  #   resources = {
  #     limits = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #     requests = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #   }
  # })

    service_account_role_arn = var.eks_kube-proxy_addon_service_account_role_arn
    tags                     = var.eks_addon_tags
    tags_all                 = var.eks_addon_tags_all
}

# aws_eks_addon.coredns:
resource "aws_eks_addon" "coredns" {
    addon_name               = var.eks_coredns_addon_name
    addon_version            = var.eks_coredns_addon_version
    
    cluster_name             = var.eks_cluster_name
    configuration_values     = var.eks_coredns_addon_configuration_values
    
  #   configuration_values = jsonencode({
  #   replicaCount = 4
  #   resources = {
  #     limits = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #     requests = {
  #       cpu    = "100m"
  #       memory = "150Mi"
  #     }
  #   }
  # })

    service_account_role_arn = var.eks_coredns_addon_service_account_role_arn
    tags                     = var.eks_addon_tags
    tags_all                 = var.eks_addon_tags_all
}