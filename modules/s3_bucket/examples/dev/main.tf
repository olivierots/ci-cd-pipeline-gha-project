module "my_bucket" {
  source             = "../../modules/s3_bucket"
  bucket_name        = var.bucket_name
  acl                 var.acl
  versioning_enabled = var.versioning_enabled
  tags               = var.tags
}
