resource "aws_vpc_peering_connection" "peering-nucleus-orlando" {
  peer_vpc_id   = aws_vpc.vpc-orlando.id
  vpc_id        = aws_vpc.vpc-nucleus.id
  accepter {
    allow_remote_vpc_dns_resolution = true
  }
  auto_accept = true
  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
resource "aws_vpc_peering_connection" "peering-nucleus-banner" {
  peer_vpc_id   = aws_vpc.vpc-banner.id
  vpc_id        = aws_vpc.vpc-nucleus.id
  auto_accept = true
  accepter {
    allow_remote_vpc_dns_resolution = true
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}
