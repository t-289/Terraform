resource "aws_elasticsearch_domain" "elasticsearch" {
  domain_name           = terraform.workspace
  elasticsearch_version = var.ver

  cluster_config {
    instance_type = var.type
    instance_count = 1
  }

  vpc_options {
    security_group_ids = var.sg_ids 
    subnet_ids = var.sub_ids
  }

  snapshot_options {
    automated_snapshot_start_hour = 03
  }

  ebs_options {
    ebs_enabled = true
    volume_type = ""
    volume_size = 10
  }

  advanced_security_options {
    enabled = var.sec_options
    internal_user_database_enabled = var.internal_user_db
    master_user_options {
      master_user_name = var.master_user
      master_user_password = var.master_pass
    }
  }

  node_to_node_encryption{
    enabled = true
  }
  
  encrypt_at_rest {
    enabled = true
  }

  domain_endpoint_options {
    enforce_https = true
    tls_security_policy = "Policy-Min-TLS-1-0-2019-07"
  }
  
  tags = {
    Domain = terraform.workspace
    Name = terraform.workspace
    CostCenter = terraform.workspace
  }
}