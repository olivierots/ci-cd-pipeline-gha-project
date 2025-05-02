variable "name" {
  description = "SSM parameter name"
  type        = string
}

variable "value" {
  description = "SSM parameter value"
  type        = string
}

variable "type" {
  description = "Type of parameter (String, SecureString, StringList)"
  type        = string
  default     = "String"
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}