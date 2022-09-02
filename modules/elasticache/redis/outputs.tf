output "id" {
    value = aws_elasticache_cluster.redis.cache_nodes.0.id 
}

output "address" {
    value = aws_elasticache_cluster.redis.cache_nodes.0.address
}

