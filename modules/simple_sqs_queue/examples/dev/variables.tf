// modules/simple_sqs_queue/examples/dev/variables.tf
variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "environment" {
  description = "Environment suffix"
  type        = string
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
  default     = 345600 # 4 days
}

variable "tags" {
  description = "Tags to apply to the queue"
  type        = map(string)
  default     = {}
}
