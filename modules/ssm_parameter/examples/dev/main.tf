module "ssm_param" {
  source = "../.."
  name   = var.name
  value  = var.value
  #type   = var.type
  tags   = var.tags
}