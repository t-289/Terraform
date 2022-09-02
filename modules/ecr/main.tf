resource "aws_ecr_repository" "repository" {
  count                = length(var.ecr_name) 
  name                 = var.ecr_name[count.index]
  image_tag_mutability = var.mutability

  image_scanning_configuration {
    scan_on_push = var.scan
  }

  tags = {
    CostCenter = terraform.workspace
  }
}