output "arn" {
  value = aws_iam_user.user.arn
  description = "The user's ARN"
}

output "name" {
  value = aws_iam_user.user.name
  description = "The user's name"
}

output "unique_id" {
  value = aws_iam_user.user.unique_id
  description = "The unique ID assigned by AWS"
}

output "tags_all" {
  value = aws_iam_user.use.tags
  description = "A map of tags assigned to the"
}