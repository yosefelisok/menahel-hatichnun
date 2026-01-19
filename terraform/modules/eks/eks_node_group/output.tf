output "id" {
  description = "EKS Node Group ID number"
  value       = aws_eks_node_group.this.id
}

output "arn" {
  description = "EKS Node Group ARN name"
  value       = aws_eks_node_group.this.arn
}

output "node_group_name" {
  description = "EKS Node Group name"
  value       = aws_eks_node_group.this.node_group_name
}

output "node_group_name_prefix" {
  description = "EKS Node Group name PREFIX"
  value       = aws_eks_node_group.this.node_group_name_prefix
}
