resource "aws_route53_resolver_endpoint" "inbound-ep-nucleus" {
  name      = "inbound-ep-nucleus"
  direction = "INBOUND"

  security_group_ids = [
    aws_security_group.sg_53_nucleus.id  ]

  ip_address {
    subnet_id = aws_subnet.subnet-nucleus-1a.id
  }

  ip_address {
    subnet_id = aws_subnet.subnet-nucleus-1b.id
  }

  tags = {
    Environment = "inbound-ep-nucleus"
  }
}


resource "aws_route53_resolver_endpoint" "inbound-ep-orlando" {
  name      = "inbound-ep-orlando"
  direction = "INBOUND"

  security_group_ids = [
    aws_security_group.sg_53_orlando.id  ]

  ip_address {
    subnet_id = aws_subnet.subnet-orlando-1a.id
  }

  ip_address {
    subnet_id = aws_subnet.subnet-orlando-1b.id
  }

  tags = {
    Environment = "inbound-ep-orlando"
  }
}

resource "aws_route53_resolver_endpoint" "inbound-ep-banner" {
  name      = "inbound-ep-banner"
  direction = "INBOUND"

  security_group_ids = [
    aws_security_group.sg_53_banner.id  ]

  ip_address {
    subnet_id = aws_subnet.subnet-banner-1a.id
  }

  ip_address {
    subnet_id = aws_subnet.subnet-banner-1b.id
  }

  tags = {
    Environment = "inbound-ep-banner"
  }
}