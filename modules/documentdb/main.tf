resource "aws_docdb_subnet_group" "docdb_subnet_group" {
  name       = terraform.workspace
  subnet_ids = var.subnets

  tags = {
    Name = terraform.workspace
  }
}

resource "aws_docdb_cluster" "docdb" {
  cluster_identifier               = terraform.workspace
  engine_version                   = var.eng_version
  engine                           = "docdb"
  master_username                  = var.username
  master_password                  = var.passwd
  backup_retention_period          = 5
  preferred_backup_window          = "08:36-09:06"
  skip_final_snapshot              = true
  db_subnet_group_name             =  aws_docdb_subnet_group.docdb_subnet_group.name
  db_cluster_parameter_group_name  = "default.docdb3.6"
  vpc_security_group_ids           = var.sg_id
  snapshot_identifier              = var.snapshot
  preferred_maintenance_window     = "wed:05:00-wed:05:30"
}

resource "aws_docdb_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "docdb-${terraform.workspace}-${count.index}"
  cluster_identifier = aws_docdb_cluster.docdb.id
  instance_class     = var.inst_class
}