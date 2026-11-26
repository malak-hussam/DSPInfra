#terraform and provider configrations
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}

#EC2 Server 
resource "aws_instance" "my_server" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
 
  # Docker installtion 
  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y docker.io
    systemctl start docker
    systemctl enable docker
    usermod -aG docker ubuntu
  EOF

  tags = {
    Name = "DSP_Server"
  }
}
