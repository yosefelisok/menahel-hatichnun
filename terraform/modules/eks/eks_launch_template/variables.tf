# variable "custom_ami_id" {
#   description = "The AMI ID to use for the EKS worker nodes"
#   type        = string
# }

variable "instance_type" {
  description = "EC2 instance type for the EKS nodes"
  type        = string
}

variable "launch_template_device_name" {
  description = "Root device name for the launch template"
  type        = string
  default     = "/dev/xvda"
}

variable "launch_template_volume_size" {
  description = "Root volume size in GB"
  type        = number
  default     = 20
}

variable "launch_template_volume_type" {
  description = "EBS volume type"
  type        = string
  default     = "gp3"
}

variable "launch_template_name_tag" {
  description = "Name tag for instances created via this launch template"
  type        = string
  default     = "eks-node"
}
