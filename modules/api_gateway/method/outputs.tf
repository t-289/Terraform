output "rest_api_id" {
    value = aws_api_gateway_method.method.rest_api_id
}

output "resource_id" {
    value = aws_api_gateway_method.method.resource_id
}

output "http_method" {
    value = aws_api_gateway_method.method.http_method
}