resource "aws_s3_bucket" "bucket" {
  bucket  var.bucket_name
  acl    = var.acl

  versioning {
    enabled = var.versioning_enabled
  }

  tags = var.tags
}