provider "aws" {
  region = var.region
}

module "my_bucket" {
  source             = "../../modules/s3_bucket"
  bucket_name        = var.bucket_name
  region             = var.region
  acl                = var.acl
  versioning_enabled = var.versioning_enabled
  tags               = var.tags
}
