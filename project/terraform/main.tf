provider "aws" {
  region     = "eu-west-1"
  access_key = "AKIA4JM2BANH43JOH2NA"
  secret_key = "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"
}


resource "aws_instance" "ec2" {
  ami           = "ami-01f23391a59163da9"
  instance_type = "t2.micro"
  key_name = "First_Key"
  security_groups = [aws_security_group.sg.name]
  tags = {
    Name = "My_first_EC2_instance"
  }
}