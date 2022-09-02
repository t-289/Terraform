resource "aws_elasticache_security_group" "elasticache_sg" {
  name                 = "${terraform.workspace}-${var.elasticache_sg}"
  security_group_names = [ var.sgs ]
}