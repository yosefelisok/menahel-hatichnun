output "vpc_id_number" {
  description = "The VPC ID number"
  value       = aws_vpc.app_vpc.id
}

output "cidr_block" {
  description = "The VPC cidr block"
  value       = aws_vpc.app_vpc.cidr_block
}