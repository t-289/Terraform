variable "id" {
    value = aws_iam_group.group.id
    description = "The group's ID"
}

variable "arn" {
    value = aws_iam_group.group.arn
    description = "The ARN assigned by AWS for this group"
}

variable "name" {
    value = aws_iam_group.group.name
    description = "The group's name"
}

variable "path" {
    value = aws_iam_group.group.path
    description = "The path of the group in IAM"
}

variable "unique_id" {
    value = aws_iam_group.group.unique_id
    description = "The unique ID assigned by AWS"
}
