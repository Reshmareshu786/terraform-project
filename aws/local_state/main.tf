
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "terraform_server" {
  ami           = "ami-05c179eced2eb9b5b"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}


