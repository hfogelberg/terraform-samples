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

resource "aws_instance" "instance_1" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  security_groups = [aws_security_group.instances.name]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}

resource "aws_instance" "instance_2" {
  ami = var.ec2_ami
  instance_type = var.ec2_instance_type
  security_groups = [aws_security_group.instances.name]
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 2" > index.html
              python3 -m http.server 8080 &
              EOF
}
