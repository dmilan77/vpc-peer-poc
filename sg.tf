resource "aws_security_group" "sg_22_nucleus" {
  name = "sg_22"
  vpc_id = aws_vpc.vpc-nucleus.id

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg22"
  }
}
resource "aws_security_group" "sg_22_orlando" {
  name = "sg_22"
  vpc_id = aws_vpc.vpc-orlando.id

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg22"
  }
}
resource "aws_security_group" "sg_22_banner" {
  name = "sg_22"
  vpc_id = aws_vpc.vpc-banner.id

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg22"
  }
}




resource "aws_security_group" "sg_53_nucleus" {
  name = "sg_53"
  vpc_id = aws_vpc.vpc-nucleus.id

  # SSH access from the VPC
  ingress {
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg53"
  }
}
resource "aws_security_group" "sg_53_orlando" {
  name = "sg_53"
  vpc_id = aws_vpc.vpc-orlando.id

  # SSH access from the VPC
  ingress {
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg53"
  }
}
resource "aws_security_group" "sg_53_banner" {
  name = "sg_53"
  vpc_id = aws_vpc.vpc-banner.id

  # SSH access from the VPC
  ingress {
      from_port   = 53
      to_port     = 53
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Environment" = "sg53"
  }
}