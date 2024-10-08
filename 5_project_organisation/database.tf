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

resource "aws_db_instance" "db_instance" {
  allocated_storage = 20
  # This allows any minor version within the major engine_version
  # defined below, but will also result in allowing AWS to auto
  # upgrade the minor version of your DB. This may be too risky
  # in a real production environment.
  auto_minor_version_upgrade = true
  storage_type               = "standard"
  engine                     = "postgres"
  engine_version             = "12"
  instance_class             = var.db_instance_class
  name                    = var.db_name
  username                   = var.db_user
  password                   = var.db_password
  skip_final_snapshot        = true
}
