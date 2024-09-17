# S3 variables
variable "s3_bucket_prefix" {
  description = "Name of S3 bucket"
  type = string
  default = "devops-directive-web-app-data"
}

resource "aws_s3_bucket" "bucket" {
  bucket_prefix = var.s3_bucket_prefix
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_crypto_conf" {
  bucket = aws_s3_bucket.bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
