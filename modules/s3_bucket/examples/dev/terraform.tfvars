bucket_name        = "my-unique-playground-bucket-123"
aws_region         = "eu-west-2"
acl                = "private"
versioning_enabled = true

tags = {
  Environment = "dev"
  Project     = "s3-module-demo"
  Owner       = "olivierots"
}##