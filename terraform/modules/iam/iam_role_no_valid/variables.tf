variable "role_name" {
  description = "The name of the role"
  type        = string
}

variable "role_json_policy" {
  description = "The path of the policy in IAM (tpl file)"
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the role"
  type        = string
  default     = "IAM Role"
}

variable "force_detach_policies" {
  description = "(optional) describe your variable"
  type = bool
  default = false
}

variable "max_session_duration" {
  description = "the max session in second"
  type = number
  default = 3600
}

variable "path" {
  description = "path of the iam"
  type = string  
  default = "/"  
}

#The 'managed_policy_arns' argument is deprecated. 
#Use the 'aws_iam_role_policy_attachments_exclusive' resource instead.

# variable "managed_policy_arns" {
#   description = "IAM Role Managed policy ARNs list"
#   type = list(string)
#   default = []
# }

variable "iam_role_tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "iam_role_tags_all" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "inline_policies" {
  description = "Map of inline policies to attach to the IAM role"
  type = map(object({
    name   = string
    policy = string
  }))
  default = {}
}