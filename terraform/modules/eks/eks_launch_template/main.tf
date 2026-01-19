resource "aws_launch_template" "eks_node_group" {
  name_prefix   = "eks-node-"
  # image_id      = var.custom_ami_id
  instance_type = var.instance_type

  block_device_mappings {
    device_name = var.launch_template_device_name

    ebs {
      volume_size = var.launch_template_volume_size
      volume_type = var.launch_template_volume_type
    }
  }

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = var.launch_template_name_tag
    }
  }

  metadata_options {
    http_tokens   = "required"       
    http_endpoint = "enabled"          
    http_put_response_hop_limit = 2
  }
}
