resource "aws_s3_bucket_policy" "this" {
    
    bucket = var.s3_bucket_name
    policy = var.s3_bucket_policy
}