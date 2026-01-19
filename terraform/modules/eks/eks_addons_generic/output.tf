output "eks_addon_id" {
  description = "EKS AddOn ID number"
  value       = aws_eks_addon.this.id
}

output "eks_addon_arn" {
  description = "EKS AddOn ARN name"
  value       = aws_eks_addon.this.arn
}
