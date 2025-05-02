variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "name" {
  type        = string
  description = "Parameter name"
}

variable "value" {
  type        = string
  description = "Parameter value"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {}
}

variable "type" {
  description = "Type of SSM parameter (String, SecureString, StringList)"
  type        = string
  default     = "String"
}
