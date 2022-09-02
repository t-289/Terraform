resource "aws_elasticsearch_domain_policy" "main" {
  domain_name = var.domain
  access_policies = file("../policy_files/${var.policy}")
}