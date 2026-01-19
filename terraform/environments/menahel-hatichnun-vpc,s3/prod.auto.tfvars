##################################################
# VPC's
##################################################
vpc_public_name                        = "public-0303030303030"
#############################DYNATRACE###############################

##############################
# Route Table - Rout
##############################

destination_cidr_block = "0.0.0.0/0"


######################################
#VPC_menahel-hatichnun
######################################

vpc_menahel-hatichnun_cidr                     = "10.233.80.0/24"
vpc_menahel-hatichnun_name                            = "menahel-hatichnun-prod-vpc-1"

vpc_menahel-hatichnun_azs                  = ["il-central-1a", "il-central-1b"]

vpc_menahel-hatichnun_private_subnets = {subnet1 = {ip   = "10.233.80.0/26"
                                         name = "menahel-hatichnun-private-prod-sub-1a"
                              },
                              subnet2 = {ip   = "10.233.80.64/26"
                                         name = "menahel-hatichnun-private-prod-sub-1b"

                              }}
                              

vpc_menahel-hatichnun_public_subnets = {subnet3 = {ip   = "10.233.80.128/28"
                                         name = "menahel-hatichnun_public-prod-sub-1a"
                           },
                           subnet4 = {ip   = "10.233.80.144/28"
                                         name = "menahel-hatichnun_public-prod-sub-1b"
                           }}

route_table_app_name_menahel-hatichnun = "menahel-hatichnun-prod-private-rt-1"

##################################################
# S3 Bucket
##################################################

s3_repository_bucket_name  = "menahel-hatichnun-59013434343434343-il-central-1-prod-s3-1"

