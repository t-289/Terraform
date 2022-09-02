resource "aws_api_gateway_method" "method" {
    rest_api_id   = var.api
    resource_id   = var.resource
    http_method   = var.method
    authorization = var.auth

}