
##################################################
###### Added after Terraform running state #######
##################################################

variable "bucket_name" {
  description = "S3 BUCKET name"
  type        = string
  
  validation {
    condition     = can(regex("^[\\w\\d_-]{1,45}-(dev|test|preprod|prod|infra)-s3-[\\d]{1,4}$", var.bucket_name))
    error_message = "The value of the name does not match the name convention : ^[\\w\\d_-]{1,40}-(dev|test|preprod|prod|infra)-s3-[\\d]{1,4}$"
  }
}

variable "is_object_lock_enabled" {
  description = "S3 BUCKET is object lock enabled FLAG"
  type        = bool
  default     = false
}

variable "s3_bucket_tags" {
  description = "The TAGs parameters"
  type        = map (string)
  default     = {}
}

variable "s3_bucket_tags_all" {
  description = "The TAGs ALL parameters"
  type        = map (string)
  default     = {}
}