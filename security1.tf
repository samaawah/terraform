/*
locals {
  common_tags = {
    Name = "jjtech"
    App_Name = "ovid"
    Cost_center = "xyz222"
    Business_unit = "GBS"
    Business_unit = "GBS"
    App_role = "web server"
    App_role = "web server"
    Environment = "dev"
    Security_Classification = "NA"
  }
}

resource "aws_eip" "lb" {
  vpc = "true"

}

output "eip" {
  value = aws_eip.lb.public_ip
}

output "eip1" {
  value = aws_eip.lb.id
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0b1a467e85796eabc"

  ingress {
    description      = "https port"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "http proxy port"
    from_port        = 8000
    to_port          = 8000
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "dns port"
    from_port        = 53
    to_port          = 53
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "http port"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "rdp port"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "ssh port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "telnet port"
    from_port        = 23
    to_port          = 23
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "smtp port"
    from_port        = 25
    to_port          = 25
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "NTP port"
    from_port        = 123
    to_port          = 123
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "NFS port"
    from_port        = 2049
    to_port          = 2049
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  ingress {
    description      = "Nessus port"
    from_port        = 1241
    to_port          = 1241
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  #  cidr_blocks      = [aws_eip.lb.public_ip/32]
  }

  tags = local.common_tags
}
*/
