
#Create S3 Bucket
module "s3_repository_bucket" {    
    source = "../../modules/s3/s3_bucket"

    bucket_name = var.s3_repository_bucket_name

    s3_bucket_tags     = local.s3_repository_bucket_tags
    s3_bucket_tags_all = local.s3_repository_bucket_tags
}

#S3 Policy data
module "iam_s3_repository_policy" {    
    source = "../../modules/s3/s3_bucket_policy"

    s3_bucket_name = module.s3_repository_bucket.s3_bucket_id
    
    depends_on = [ module.s3_repository_bucket ]
}