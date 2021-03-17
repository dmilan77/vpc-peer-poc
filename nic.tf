resource "aws_network_interface" "ni-nucleus" {
  subnet_id   = aws_subnet.subnet-nucleus-1a.id
  private_ips = ["10.1.0.100"]

  tags = {
    Name = "primary_network_interface_nucleus"
  }
}
resource "aws_network_interface" "ni-orlando" {
  subnet_id   = aws_subnet.subnet-orlando-1a.id
  private_ips = ["10.2.0.100"]

  tags = {
    Name = "primary_network_interface_orlando"
  }
}
resource "aws_network_interface" "ni-banner" {
  subnet_id   = aws_subnet.subnet-banner-1a.id
  private_ips = ["10.3.0.100"]

  tags = {
    Name = "primary_network_interface_banner"
  }
}

