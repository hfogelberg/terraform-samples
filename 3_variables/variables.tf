variable "region" {
  description = "AWS region"
  type=string
  default="eu-north-1"
}

# EC2 variables
variable "ec2_ami" {
  description = "Machine image to use for EC2 instance"
  type = string
  default = "ami-090abff6ae1141d7d"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}

# S3 variables
variable "s3_bucket_prefix" {
  description = "Name of S3 bucket"
  type = string
  default = "devops-directive-web-app-data"
}

# Route53 variables
variable "route53_zone" {
  description = "Name of exisitng URL"
  type = string
  default = "ginkgodev.com"
}

# RDS variables
variable "db_instance_class" {
  description = "RDS instance class"
  type = string
  default = "db.t4g.micro"
}

variable "db_name" {
  description = "Name of Db"
  type = string
  default = "mydb"
}

variable "db_user" {
  description = "DB user name"
  type = string
}

variable "db_password" {
  description = "Secret DB password"
  type = string
  sensitive = true
}

