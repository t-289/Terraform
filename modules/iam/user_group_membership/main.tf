resource "aws_iam_user_group_membership" "user_group_membership" {
  user = var.user_name
  groups = var.groups_name
}