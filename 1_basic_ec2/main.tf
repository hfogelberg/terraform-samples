terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
  profile = "henrik_terraform"
  region = "eu-north-1"
}

resource "aws_instance" "example" {
  ami = "ami-090abff6ae1141d7d"
  instance_type = "t3.micro"
}
