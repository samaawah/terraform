provider "aws" {
  access_key = "AKIARKZTFTECNGVGC25C"
  secret_key = "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"
  region = "us-west-1"
}

resource "aws_instance" "ArodevWebIns" {
  ami = "ami-04468e03c37242e1e"
  instance_type = "t2.micro"

}
