################################################################################
# Amazon EKS Modules
################################################################################

resource "aws_eks_node_group" "this" {
  cluster_name    = var.eks_cluster_name
  node_group_name = var.eks_node_group_name
  node_role_arn   = var.eks_node_group_role_arn
  subnet_ids      = var.eks_node_group_subnet_ids
  version         = var.eks_node_group_version

  capacity_type = var.eks_node_group_capacity_type

  dynamic "launch_template" {
    for_each = var.eks_node_group_launch_template_id != null ? [1] : []
    content {
      id      = var.eks_node_group_launch_template_id
      version = var.eks_node_group_launch_template_version
    }
  }

  scaling_config {
    desired_size = var.eks_node_group_scaling_config_desired_size
    max_size     = var.eks_node_group_scaling_config_max_size
    min_size     = var.eks_node_group_scaling_config_min_size
  }

  labels     = var.eks_node_group_labels
  tags       = var.eks_node_group_tags
  tags_all   = var.eks_node_group_tags_all

  # Optional
  node_group_name_prefix = var.eks_node_group_name_prefix
  release_version        = var.eks_node_group_release_version

  # If you want to control rolling update behavior
  # update_config {
  #   max_unavailable = 1
  # }
}


# resource "aws_eks_node_group" "this" {
#     ami_type               = var.eks_node_group_ami_type
#     capacity_type          = var.eks_node_group_capacity_type
#     cluster_name           = var.eks_cluster_name
#     disk_size              = var.eks_node_group_disk_size
#     instance_types         = var.eks_node_group_instance_types
    
#     labels                 = var.eks_node_group_labels
#     node_group_name        = var.eks_node_group_name
#     node_group_name_prefix = var.eks_node_group_name_prefix
#     node_role_arn          = var.eks_node_group_role_arn
#     release_version        = var.eks_node_group_release_version
     
#     subnet_ids             = var.eks_node_group_subnet_ids
    
#     version                = var.eks_node_group_version

#     tags                   = var.eks_node_group_tags
#     tags_all               = var.eks_node_group_tags_all
   

#     scaling_config {
#         desired_size = var.eks_node_group_scaling_config_desired_size
#         max_size     = var.eks_node_group_scaling_config_max_size
#         min_size     = var.eks_node_group_scaling_config_min_size
#     }

#     # update_config {
#     #     max_unavailable            = 1
#     #     max_unavailable_percentage = 0
#     # }
# }

