resource "aws_instance" "nucleus-instance" {
  ami           = "ami-038f1ca1bd58a5790" # us-east-1
  instance_type = "t2.micro"
  # associate_public_ip_address = true
  network_interface {
    network_interface_id = aws_network_interface.ni-nucleus.id
    device_index         = 0
  }
  key_name         = "ssh-key-vpc-peer-test"
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "nucleus-instance"
  }
}
resource "aws_instance" "orlando-instance" {
  ami           = "ami-038f1ca1bd58a5790" # us-east-1
  instance_type = "t2.micro"
  # associate_public_ip_address = true
  network_interface {
    network_interface_id = aws_network_interface.ni-orlando.id
    device_index         = 0
  }
  key_name         = "ssh-key-vpc-peer-test"
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "orlando-instance"
  }
}
resource "aws_instance" "banner-instance" {
  ami           = "ami-038f1ca1bd58a5790" # us-east-1
  instance_type = "t2.micro"
  # associate_public_ip_address = true
  network_interface {
    network_interface_id = aws_network_interface.ni-banner.id
    device_index         = 0
  }
  key_name         = "ssh-key-vpc-peer-test"
  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "banner-instance"
  }
}


resource "aws_instance" "bastion-vpc-peering-instance" {
  ami           = "ami-038f1ca1bd58a5790" # us-east-1
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet-nucleus-1a.id
  vpc_security_group_ids = [aws_security_group.sg_22_nucleus.id]
  key_name         = "ssh-key-vpc-peer-test"

  tags = {
		Name = "bastion-vpc-peering-instance"
	}
}