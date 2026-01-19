output "id" {
  description = "The role ID"
  value       = aws_iam_role.this.id
}

output "arn" {
  description = "ARN of admin IAM role"
  value       = aws_iam_role.this.arn
}

output "name" {
  description = "Name of admin IAM role"
  value       = aws_iam_role.this.name
}