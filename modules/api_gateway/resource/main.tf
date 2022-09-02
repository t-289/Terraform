resource "aws_api_gateway_resource" "api_resource" {
  rest_api_id = var.api
  parent_id   = var.parent
  path_part   = var.part
}