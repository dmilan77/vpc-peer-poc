resource "aws_route53_zone" "zone-nucleus-private" {
  name = "root.innovaccer.net"
  force_destroy = "true"
  vpc {
    vpc_id = aws_vpc.vpc-nucleus.id
  }
}
resource "aws_route53_zone" "zone-orlando-private" {
  name = "orlando.root.innovaccer.net"
  force_destroy = "true"
  vpc {
    vpc_id = aws_vpc.vpc-orlando.id
  }
}
resource "aws_route53_zone" "zone-banner-private" {
  name = "banner.root.innovaccer.net"
  force_destroy = "true"
  vpc {
    vpc_id = aws_vpc.vpc-banner.id
  }
}

resource "aws_route53_record" "nucleus-record" {
  zone_id = aws_route53_zone.zone-nucleus-private.zone_id
  name    = "nucleus-record.root.innovaccer.net"
  type    = "A"
  ttl     = "300"
  records = ["10.1.0.100"]
}
resource "aws_route53_record" "orlando-record" {
  zone_id = aws_route53_zone.zone-orlando-private.zone_id
  name    = "orlando-record.orlando.root.innovaccer.net"
  type    = "A"
  ttl     = "300"
  records = ["10.2.0.100"]
}
resource "aws_route53_record" "banner-record" {
  zone_id = aws_route53_zone.zone-banner-private.zone_id
  name    = "banner-record.banner.root.innovaccer.net"
  type    = "A"
  ttl     = "300"
  records = ["10.3.0.100"]
}