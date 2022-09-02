resource "aws_iam_instance_profile" "instance_profile" {
  name = "${terraform.workspace}-${var.profile_name}"
  role = var.role_name
}