module "my_bucket" {
  source             = "../.." # up two levels into 
  bucket_name        = var.bucket_name
  acl                = var.acl
  versioning_enabled = var.versioning_enabled
  tags               = var.tags
}

