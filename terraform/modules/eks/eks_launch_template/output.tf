output "launch_template_id" {
  description = "ID of the EKS Launch Template"
  value       = aws_launch_template.eks_node_group.id
}

output "launch_template_name" {
  description = "Name of the EKS Launch Template"
  value       = aws_launch_template.eks_node_group.name
}

output "launch_template_latest_version" {
  description = "Latest version of the Launch Template"
  value       = aws_launch_template.eks_node_group.latest_version
}
