provider "aws" {
  #profile = "default"
  profile = "menahel-hatichnun_mps-admin"
  region  = "il-central-1"

  default_tags {
   tags = {
    created_by              = "menahel-hatichnun-aws"
    finops                  = "menahel-hatichnun-it"
    business_project_number = "4502283245"
    deploy_method           = "terraform"
   }
 }
}