resource "aws_subnet" "subnet-nucleus-1a" {
  vpc_id     = aws_vpc.vpc-nucleus.id
  cidr_block = "10.1.0.0/25"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-nucleus-1a"
  }
}
resource "aws_subnet" "subnet-nucleus-1b" {
  vpc_id     = aws_vpc.vpc-nucleus.id
  cidr_block = "10.1.0.128/25"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-nucleus-1a"
  }
}
resource "aws_subnet" "subnet-orlando-1a" {
  vpc_id     = aws_vpc.vpc-orlando.id
  cidr_block = "10.2.0.0/25"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-orlando-1a"
  }
}
resource "aws_subnet" "subnet-orlando-1b" {
  vpc_id     = aws_vpc.vpc-orlando.id
  cidr_block = "10.2.0.128/25"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-orlando-1a"
  }
}
resource "aws_subnet" "subnet-banner-1a" {
  vpc_id     = aws_vpc.vpc-banner.id
  cidr_block = "10.3.0.0/25"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-banner-1a"
  }
}
resource "aws_subnet" "subnet-banner-1b" {
  vpc_id     = aws_vpc.vpc-banner.id
  cidr_block = "10.3.0.128/25"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "subnet-banner-1a"
  }
}

