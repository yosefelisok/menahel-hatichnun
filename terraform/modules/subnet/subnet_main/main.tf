################################################################################
# Amazon VPC Modules
################################################################################

resource "aws_subnet" "service" {
    assign_ipv6_address_on_creation                = var.is_assign_ipv6_address_on_creation
    availability_zone                              = var.availability_zone_name

    cidr_block                                     = var.cidr_block_range
    enable_dns64                                   = var.is_enable_dns64
    enable_resource_name_dns_a_record_on_launch    = var.is_enable_resource_name_dns_a_record_on_launch
    enable_resource_name_dns_aaaa_record_on_launch = var.is_enable_resource_name_dns_aaaa_record_on_launch
    ipv6_native                                    = var.is_ipv6_native
    map_public_ip_on_launch                        = var.is_map_public_ip_on_launch
    private_dns_hostname_type_on_launch            = var.private_dns_hostname_type_on_launch

    tags     = merge({ "Name" = var.subnet_name },
                       var.subnet_tags,
                       var.veeam_tags)
    tags_all = merge({ "Name" = var.subnet_name },
                       var.subnet_tags_all)

    vpc_id                                         = var.vpc_id_number

    timeouts {}

    lifecycle {
    ignore_changes = [
      tags["karpenter.sh/discovery"]
    ]
  }
}
