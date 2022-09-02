data "aws_availability_zones" "available" {}

resource "aws_db_subnet_group" "db_sub_gr" {
  name        = "${terraform.workspace}-subnet-group"
  subnet_ids  = var.subnets
  depends_on  = [ var.db_sub_gr_depends_on ]
  description = "Subnet Group for RDS intances in ${terraform.workspace}"
}