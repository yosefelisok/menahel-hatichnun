################################################################################
# Amazon VPC Modules
################################################################################

resource "aws_vpc" "app_vpc" {
    assign_generated_ipv6_cidr_block     = false
    cidr_block                           = var.cidr_block_range   
    enable_dns_hostnames                 = true
    enable_network_address_usage_metrics = false
    instance_tenancy                     = "default"
    
    tags     = merge({ "Name" = var.vpc_name },
                              var.vpc_tags,
                            
                             )
    tags_all = merge({ "Name" = var.vpc_name },
                              var.vpc_tags_all)
}


