resource "aws_eks_cluster" "eks_cluster" {
  name     = terraform.workspace
  role_arn = var.iam_cluster_arn

  vpc_config {
    security_group_ids = [ var.security_group_cluster ]
    subnet_ids         = var.subnets
  }

    tags = {
    Name = "${terraform.workspace}"
    CostCenter = terraform.workspace
  }
}