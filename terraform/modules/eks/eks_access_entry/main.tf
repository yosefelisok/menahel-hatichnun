################################################################################
# Amazon EKS Modules
################################################################################

resource "aws_eks_access_entry" "this" {
    cluster_name      = var.eks_access_entry_cluster_name
    kubernetes_groups = var.eks_access_entry_kubernetes_groups
    principal_arn     = var.eks_access_entry_principal_arn
    
    type              = var.eks_access_entry_type
    user_name         = var.eks_access_entry_user_name

    tags              = var.eks_access_entry_tags
    tags_all          = var.eks_access_entry_tags_all
}