resource "aws_ssm_parameter" "this" {
  name  = var.name
  value = var.value
  type  = var.type
  tags  = var.tags
}