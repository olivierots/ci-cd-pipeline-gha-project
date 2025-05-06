aws_region                 = "eu-west-2"
environment                = "dev"
name                       = "demo-dev-queue"
visibility_timeout_seconds = 45
message_retention_seconds  = 1209600
tags = {
  Environment = "dev"
  Project     = "simple-queue-demo"
}
