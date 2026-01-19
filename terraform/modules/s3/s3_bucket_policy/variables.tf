variable "s3_bucket_name" {
    type = string
    description = "the name of s3 bucket"
    default = null
}

variable "s3_bucket_policy" {
  type        = string
  description = "The JSON policy for the S3 bucket"
  default = null
}

