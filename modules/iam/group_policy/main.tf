resource "aws_iam_group_policy" "group_policy" {
  name  = var.policy_name
  group = var.group_name

  policy = jsonencode(var.policy_file_path)
}