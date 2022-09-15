resource "aws_iam_user" "user" {
  count         = length(var.user_name)
  name          = var.user_name[count.index]
  path          = length(var.user_path) == 1 ? var.user_path[0] : var.user_path[count.index]
  force_destroy = var.user_force_destroy
}