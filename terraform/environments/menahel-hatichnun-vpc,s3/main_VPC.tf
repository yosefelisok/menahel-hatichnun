################################################################################
# Amazon Modules
################################################################################

#Create VPC
module "vpc_menahel-hatichnun" {    
    source = "../../modules/vpc/vpc_main"

    cidr_block_range = var.vpc_menahel-hatichnun_cidr

    vpc_name = var.vpc_menahel-hatichnun_name

    vpc_tags     =  local.vpc_tags_menahel-hatichnun
    vpc_tags_all =  local.vpc_tags_menahel-hatichnun
}

#Create Private Subnets
module "subnets_private_menahel-hatichnun" {    
    source = "../../modules/subnet/subnet_main"

    vpc_id_number = module.vpc_menahel-hatichnun.vpc_id_number

    for_each = var.vpc_menahel-hatichnun_private_subnets
    
    availability_zone_name = strcontains(each.value.name, "-1a") ? var.vpc_menahel-hatichnun_azs[0] : var.vpc_menahel-hatichnun_azs[1]

    cidr_block_range = each.value.ip

    subnet_name = each.value.name

    subnet_tags     = local.subnet_tags_menahel-hatichnun
    subnet_tags_all = local.subnet_tags_menahel-hatichnun
}

#Create Public Subnets
module "subnets_public_menahel-hatichnun" {    
    source = "../../modules/subnet/subnet_main"

    vpc_id_number = module.vpc_menahel-hatichnun.vpc_id_number

    for_each = var.vpc_menahel-hatichnun_public_subnets
    
    availability_zone_name = strcontains(each.value.name, "-1a") ? var.vpc_menahel-hatichnun_azs[0] : var.vpc_menahel-hatichnun_azs[1]

    cidr_block_range = each.value.ip

    subnet_name = each.value.name

    subnet_tags     = local.subnet_tags_menahel-hatichnun
    subnet_tags_all = local.subnet_tags_menahel-hatichnun

    depends_on = [ module.vpc_menahel-hatichnun ]
}

##########IGW +NAT+RT##########################

resource "aws_internet_gateway" "menahel_hatichnun" {
  vpc_id = module.vpc_menahel-hatichnun.vpc_id_number

  tags = merge(local.vpc_tags_menahel-hatichnun, {
    Name = "${var.vpc_menahel-hatichnun_name}-igw"
  })
}

resource "aws_route_table" "public" {
  vpc_id = module.vpc_menahel-hatichnun.vpc_id_number

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.menahel_hatichnun.id
  }

  tags = {
    Name = "${var.vpc_menahel-hatichnun_name}-public-rt"
  }
}


resource "aws_route_table_association" "public" {
  for_each = module.subnets_public_menahel-hatichnun

  subnet_id      = each.value.subnet_id
  route_table_id = aws_route_table.public.id
}

# One NAT per public subnet (recommended HA)
resource "aws_eip" "nat" {

  for_each = module.subnets_public_menahel-hatichnun

  domain = "vpc"

  tags = {
    Name = "${var.vpc_menahel-hatichnun_name}-nat-eip-${each.key}"
  }
}

resource "aws_nat_gateway" "nat" {
  for_each = module.subnets_public_menahel-hatichnun

  allocation_id = aws_eip.nat[each.key].id
  subnet_id     = each.value.subnet_id

  tags = {
    Name = "${var.vpc_menahel-hatichnun_name}-nat-${each.key}"
  }

  depends_on = [aws_internet_gateway.menahel_hatichnun]
}

resource "aws_route_table" "private" {
  for_each = aws_nat_gateway.nat

  vpc_id = module.vpc_menahel-hatichnun.vpc_id_number

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = each.value.id
  }

  tags = {
    Name = "${var.vpc_menahel-hatichnun_name}-private-rt-${each.key}"
  }
}


resource "aws_route_table_association" "private" {
  for_each = module.subnets_private_menahel-hatichnun

  subnet_id      = each.value.subnet_id
  route_table_id = values(aws_route_table.private)[0].id
}
