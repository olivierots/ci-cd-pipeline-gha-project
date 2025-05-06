variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "environment" {
  description = "Name suffix for resources (e.g. dev, prod)"
  type        = string
  default     = "dev"
}

variable "name" {
  description = "Name of the SQS queue"
  type        = string
}

variable "visibility_timeout_seconds" {
  description = "Visibility timeout in seconds"
  type        = number
  default     = 30
}

variable "message_retention_seconds" {
  description = "How long messages are retained (seconds)"
  type        = number

  # 4 days in seconds
  default = 345600
}

variable "tags" {
  description = "Tags to apply to the queue"
  type        = map(string)
  default     = {}
}
