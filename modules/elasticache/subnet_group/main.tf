resource "aws_elasticache_subnet_group" "group" {
  name       = "${terraform.workspace}-${var.elasticache_sub_group}"
  subnet_ids = var.subnets
}