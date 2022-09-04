resource "aws_iam_group_membership" "team" {
  name  = var.membership_name
  users = var.user_list
  group = var.group_name
}
