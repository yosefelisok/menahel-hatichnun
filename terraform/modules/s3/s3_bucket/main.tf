################################################################################
# Amazon S3 Modules
################################################################################

resource "aws_s3_bucket" "this" {
    bucket                      = var.bucket_name
    object_lock_enabled         = var.is_object_lock_enabled
  
    tags                        = var.s3_bucket_tags
    tags_all                    = var.s3_bucket_tags_all
}



