output "id" {
  description = "EKS Cluster ID number"
  value       = aws_eks_cluster.this.id
}

output "arn" {
  description = "EKS Cluster ARN name"
  value       = aws_eks_cluster.this.arn
}

output "name" {
  description = "EKS Cluster name"
  value       = aws_eks_cluster.this.name
}
