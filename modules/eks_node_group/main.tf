resource "aws_eks_node_group" "node" {
  cluster_name    = var.eks_cluster_name
  node_group_name = "${terraform.workspace}-${var.eks_node_group}"
  node_role_arn   = var.node_role
  subnet_ids      = var.subnets
  instance_types  = var.type
  disk_size       = 25

  scaling_config {
    desired_size = var.desired
    max_size     = var.max
    min_size     = var.min
  }

  tags = {
      Name = "${terraform.workspace}-${var.env}"
      CostCenter = terraform.workspace
    }
}