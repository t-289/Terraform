resource "aws_iam_role" "cluster" {
  name = "${terraform.workspace}-${var.role_name}"
  assume_role_policy = file("../policy_files/${var.file_name}")
}