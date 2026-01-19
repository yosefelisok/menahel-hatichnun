terraform {
  required_version = ">= 1.7"
  backend "s3" {
    region  = "il-central-1"
    profile = "default"
    key     = "menahel-hatichnun-infra/terraform.tfstate"
    bucket  = "devops-terraform-tfstate-files"
  }
}