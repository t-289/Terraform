data "aws_availability_zones" "available" {}

resource "aws_db_instance" "db" {
  identifier        = "${terraform.workspace}" # Instance name
  storage_type      = var.stor_type
  allocated_storage = var.alloc_storage
  engine            = var.db_engine
  engine_version    = var.eng_version
  instance_class    = var.inst_class
  name              = var.db_name == null ? "${terraform.workspace}" : var.db_name  # Database name
  username          = var.db_username
  password          = var.db_password

  vpc_security_group_ids = [ var.sec_grp_rds ]

  db_subnet_group_name = var.subnet_grp_name
  storage_encrypted    = false
  skip_final_snapshot  = true
  publicly_accessible  = false
  multi_az             = false

  tags = {
    Name = "${terraform.workspace}"
    CostCenter = terraform.workspace
  }
  depends_on = [ var.rds_depens_on ]
}