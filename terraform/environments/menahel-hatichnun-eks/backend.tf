terraform {
  
  backend "s3" {
    region  = "il-central-1"
    profile = "default"
    key     = "menahel-hatichnun-eks/terraform.tfstate"
    bucket  = "devops-terraform-tfstate-files"
  }
}
