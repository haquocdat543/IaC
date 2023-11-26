# Profile configuration
provider "aws" {
 region = "ap-northeast-1"
}

terraform {
  cloud {
    organization = <your-organization>

    workspaces {
      name = <your-name>
    }
  }
}

resource "aws_instance" "server" {
  ami           = "ami-098940df4d3292e9a"
  instance_type = "t3.micro"
  availability_zone = "ap-northeast-1a"
  key_name          = "Window2"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "Server"
  }
}

output "public_ip" {
  value = aws_instance.server.public_ip
}
