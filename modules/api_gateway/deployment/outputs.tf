output "id" {
    value = aws_api_gateway_deployment.api_deploy.id
}

output "url" {
    value = aws_api_gateway_deployment.api_deploy.invoke_url
}

output "created_date" {
    value = aws_api_gateway_deployment.api_deploy.created_date
}