resource "aws_iam_role" "cluster" {
  name = var.role_name 
  path = var.role_path
  assume_role_policy = var.file_name != null ? jsonencode(file(var.file_path)) : null 
  description = var.descrip 

}