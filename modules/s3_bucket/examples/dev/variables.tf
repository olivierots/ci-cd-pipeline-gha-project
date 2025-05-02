variable "aws_region" {
  description = "AWS region for all operations"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket to create"
  type        = string
}

variable "acl" {
  description = "The canned ACL to apply to the bucket"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Whether to enable versioning on the bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
