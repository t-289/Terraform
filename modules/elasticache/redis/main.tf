resource "aws_elasticache_subnet_group" "redis" {
  name       = terraform.workspace
  subnet_ids = var.subnets_ids
}

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = terraform.workspace
  engine               = var.eng
  node_type            = var.type
  num_cache_nodes      = var.cache_nodes
  parameter_group_name = var.parameter_group
  engine_version       = var.eng_version
  port                 = var.port
  security_group_ids   = var.security_group 
  subnet_group_name    = aws_elasticache_subnet_group.redis.name
  
  tags = {
    Name = "${terraform.workspace}"
    CostCenter = terraform.workspace
  }
}