################################################################################
# Amazon EKS Modules
################################################################################

resource "aws_eks_access_policy_association" "this" {
    cluster_name  = var.eks_access_policy_association_cluster_name 
    policy_arn    = var.eks_access_policy_association_policy_arn
    principal_arn = var.eks_access_policy_association_principal_arn

    access_scope {
        namespaces = var.eks_access_entry_policy_association_access_scope_namespaces
        type       = var.eks_access_entry_policy_association_access_scope_type
    }
}