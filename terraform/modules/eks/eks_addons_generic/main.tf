################################################################################
# Amazon EKS Modules
################################################################################

# aws_eks_addon:
resource "aws_eks_addon" "this" {
    addon_name               = var.addon_name
    addon_version            = var.addon_version
    cluster_name             = var.eks_cluster_name
    configuration_values     = var.addon_configuration_values
   
    service_account_role_arn = var.addon_service_account_role_arn
    tags                     = var.eks_addon_tags
    tags_all                 = var.eks_addon_tags_all
}