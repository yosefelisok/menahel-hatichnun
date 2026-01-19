
variable "cluster_name" {
  description = "The name of the existing EKS cluster"
  type        = string
}

variable "fargate_profile_name" {
  description = "The name for the Fargate profile"
  type        = string
}

variable "namespaces" {
  description = "List of namespaces to be included in the Fargate profile"
  type        = list(string)
}

variable "subnet_ids" {
  description = "Subnets where Fargate will schedule pods"
  type        = list(string)
}