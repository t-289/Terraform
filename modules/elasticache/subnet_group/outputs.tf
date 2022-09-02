output "name" {
    value = aws_elasticache_subnet_group.group.name
}
output "subnet_ids" {
    value = aws_elasticache_subnet_group.group.subnet_ids
}