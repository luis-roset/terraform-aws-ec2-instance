provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  # Optional: Add security group
  vpc_security_group_ids = var.security_group_ids

  # Optional: Add key pair
  key_name = var.key_name

  # Optional: Add subnet
  subnet_id = var.subnet_id

  # Optional: Add user data
  user_data = var.user_data
}