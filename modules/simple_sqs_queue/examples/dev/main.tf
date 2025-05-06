module "simple_sqs_queue" {
  source                     = "../.."
  aws_region                 = var.aws_region
  environment                = var.environment
  name                       = var.name
  visibility_timeout_seconds = var.visibility_timeout_seconds
  message_retention_seconds  = var.message_retention_seconds
  tags                       = var.tags
}
