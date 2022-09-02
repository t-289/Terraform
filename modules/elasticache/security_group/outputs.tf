output "description" {
    value = aws_elasticache_security_group.elasticache_sg.description
}
output "name" {
    value = aws_elasticache_security_group.elasticache_sg.name
}
output "sg_group_name" {
    value =  aws_elasticache_security_group.elasticache_sg.security_group_names
}