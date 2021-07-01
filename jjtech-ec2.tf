#provider "aws" {
#  access_key = "AKIA34OPRNRYG6QDNNEU"
#  secret_key = "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"
#  region = "us-west-1"
#}
locals {
  common_tags = {
    Name = "jjtech"
    App_Name = "ovid"
    Cost_center = "xyz222"
    Business_unit = "GBS"
    Project = "GBS"
    App_role = "web server"
    Customer = "students"
    Environment = "dev"
    Confidentiality = "Restricted"
    Owner = "jespo_mbwoge@jjtechinc.co"
    Opt_in-Opt_out = "Yes"
    Application_ID = "197702"
    Compliance = "pci"
  }
}

resource "aws_instance" "jjtechweb" {
  ami = var.myami_id
  instance_type = var.myinstance_type
  tags = local.common_tags

}

resource "aws_instance" "jjtechweb01" {
  ami = var.myami_id
  instance_type = var.myinstance_type
  tags = local.common_tags

}

resource "aws_instance" "jjtechweb02" {
  ami = var.myami_id
  instance_type = var.myinstance_type
  tags = local.common_tags

}
resource "aws_ebs_volume" "jjtechEBS" {
  availability_zone = "us-west-1b"
  size              = 40

  tags = local.common_tags
}

output "jjtechEC2" {
  value = aws_instance.jjtechweb.public_ip
}

resource "aws_eip" "jjtechEip" {
  vpc = true

}

output "jjtech_eip" {
  value = aws_eip.jjtechEip.id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.jjtechweb.id
  allocation_id =  aws_eip.jjtechEip.id
}
