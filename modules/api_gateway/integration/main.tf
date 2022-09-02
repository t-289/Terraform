resource "aws_api_gateway_integration" "api_integration" {
  rest_api_id = var.api_id
  resource_id = var.resource
  http_method = var.method
  type        = var.int_type
  integration_http_method = var.integration_method
  uri = var.integration_url 
}