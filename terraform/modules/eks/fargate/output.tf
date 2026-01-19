output "fargate_profile_name" {
  description = "The name of the created Fargate profile"
  value       = aws_eks_fargate_profile.this.fargate_profile_name
}

output "fargate_pod_execution_role_arn" {
  description = "The ARN of the Fargate pod execution role"
  value       = aws_iam_role.fargate_pod_execution_role.arn
}
