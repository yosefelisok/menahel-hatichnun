output "id" { 
  description = "EKS Access Entry Cluster ID number"
  value       = aws_eks_access_entry.this.id
}

output "cluster_name" {
  description = "EKS Access Entry Cluster name"
  value       = aws_eks_access_entry.this.cluster_name
}

output "principal_arn" {
  description = "EKS Access Entry principal ARN name"
  value       = aws_eks_access_entry.this.principal_arn
}
