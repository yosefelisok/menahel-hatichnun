output "s3_bucket_arn" {
  description = "The S3 BUCKET name"
  value       = aws_s3_bucket.this.arn
}

output "s3_bucket_id" {
  description = "The S3 BUCKET ID"
  value       = aws_s3_bucket.this.id
}