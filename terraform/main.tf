# terraform/main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "your-key-name"
  tags = {
    Name = "app-server"
  }
}

resource "aws_instance" "support_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "your-key-name"
  tags = {
    Name = "support-server"
  }
}

output "app_server_ip" {
  value = aws_instance.app_server.public_ip
}

output "support_server_ip" {
  value = aws_instance.support_server.public_ip
}

