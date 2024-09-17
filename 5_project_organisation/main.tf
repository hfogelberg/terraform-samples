terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

variable "region" {
  description = "AWS region"
  type=string
  default="eu-north-1"
}

provider "aws" {
  region = var.region
  profile = "henrik_terraform"
}
