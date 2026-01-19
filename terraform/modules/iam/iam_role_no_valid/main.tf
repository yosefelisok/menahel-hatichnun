resource "aws_iam_role" "this" {

  name                  = var.role_name
  assume_role_policy    = var.role_json_policy
  description           = var.description

  force_detach_policies = var.force_detach_policies
  max_session_duration  = var.max_session_duration
  path                  = var.path

  #The 'managed_policy_arns' argument is deprecated. 
  #Use the 'aws_iam_role_policy_attachments_exclusive' resource instead.
  
  # managed_policy_arns   = var.managed_policy_arns 

  #The 'inline_policy' argument is deprecated. 
  dynamic "inline_policy" {
    for_each = var.inline_policies
    content {
      name   = inline_policy.value.name
      policy = inline_policy.value.policy
    }
  }

  tags                  = var.iam_role_tags
  tags_all              = var.iam_role_tags_all
}