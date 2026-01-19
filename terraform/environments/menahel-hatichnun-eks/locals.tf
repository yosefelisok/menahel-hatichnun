locals {
  sg_tags = {
    Name         = "gitlab-eks-cluster-prod-sg-1"
    project_name = "menahel-hatichnun"
    environment  = "prod"
    created_date = "30/01/2025 17:00"
    department   = "aws"
  }

  eks_tags = {
    Name         = "menahel-hatichnun-eks"   
    project_name = "menahel-hatichnun"
    environment  = "prod"
    created_date = "30/01/2025 17:00"
    department   = "aws"
  }

  eks_node_group_tags = {
    Name         = "menahel-hatichnun-eks-node-group"   
    project_name = "menahel-hatichnun"
    environment  = "prod"
    created_date = "30/01/2025 17:00"
    department   = "aws"
  }

  eks_addon_tags = {
    Name         = "menahel-hatichnun-eks-addon"   
    project_name = "menahel-hatichnun"
    environment  = "prod"
    created_date = "30/01/2025 17:00"
    department   = "aws"
  }

}