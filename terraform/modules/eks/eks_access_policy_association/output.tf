output "id" {
  description = "EKS Access Policy Aassociation ID number"
  value       = aws_eks_access_policy_association.this.id
}

output "cluster_name" {
  description = "EKS Access Policy Aassociation Cluster name"
  value       = aws_eks_access_policy_association.this.cluster_name
}
