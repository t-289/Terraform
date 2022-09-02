output "arn" {
    value = aws_ecr_repository.repository.*.arn
}

output "id" {
    value = aws_ecr_repository.repository.*.registry_id
}

output "url" {
    value = aws_ecr_repository.repository.*.repository_url
}
