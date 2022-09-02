resource "aws_sns_topic" "sns" {
  name = var.sns_name == null ? "${terraform.workspace}-${var.env}" : var.sns_name
}