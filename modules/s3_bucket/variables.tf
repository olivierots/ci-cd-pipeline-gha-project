variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS region to create the bucket in"
  type        = string
  default     = "eu-west-2"
}

variable "acl" {
  description = "Canned ACL to apply"
  type        = string
  default     = "private"
}

variable "versioning_enabled" {
  description = "Enable bucket versioning?"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
