resource "aws_vpc" "vpc-nucleus" {
  cidr_block       = "10.1.0.0/24"
  instance_tenancy = "default"
  enable_dns_support  = true
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-nucleus"
  }
}

resource "aws_vpc" "vpc-orlando" {
  cidr_block       = "10.2.0.0/24"
  instance_tenancy = "default"
  enable_dns_support  = true
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-orlando"
  }
}
resource "aws_vpc" "vpc-banner" {
  cidr_block       = "10.3.0.0/24"
  instance_tenancy = "default"
  enable_dns_support  = true
  enable_dns_hostnames = true
  tags = {
    Name = "vpc-banner"
  }
}

resource "aws_internet_gateway" "gw-nucleus" {
  vpc_id = aws_vpc.vpc-nucleus.id

  tags = {
    Name = "gw-nucleus"
  }
}
resource "aws_internet_gateway" "gw-orlando" {
  vpc_id = aws_vpc.vpc-orlando.id

  tags = {
    Name = "gw-orlando"
  }
}
resource "aws_internet_gateway" "gw-banner" {
  vpc_id = aws_vpc.vpc-banner.id

  tags = {
    Name = "gw-banner"
  }
}

resource "aws_route_table" "rtb-nucleus" {
  vpc_id = aws_vpc.vpc-nucleus.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.gw-nucleus.id
  }

  tags = {
    "Environment" = "rtb-nucleus"
  }
}
resource "aws_route_table" "rtb-orlando" {
  vpc_id = aws_vpc.vpc-orlando.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.gw-orlando.id
  }

  tags = {
    "Environment" = "rtb-orlando"
  }
}
resource "aws_route_table" "rtb-banner" {
  vpc_id = aws_vpc.vpc-banner.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.gw-banner.id
  }

  tags = {
    "Environment" = "rtb-banner"
  }
}

resource "aws_main_route_table_association" "rt-nucleus" {
  vpc_id         = aws_vpc.vpc-nucleus.id
  route_table_id = aws_route_table.rtb-nucleus.id
}
resource "aws_main_route_table_association" "rt-orlando" {
  vpc_id         = aws_vpc.vpc-orlando.id
  route_table_id = aws_route_table.rtb-orlando.id
}
resource "aws_main_route_table_association" "rt-banner" {
  vpc_id         = aws_vpc.vpc-banner.id
  route_table_id = aws_route_table.rtb-banner.id
}