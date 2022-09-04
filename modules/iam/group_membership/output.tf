output "name" {
    value = aws_iam_group_membership.team.name
    description = "The name to identify the Group Membership"
}

output "users" {
    value = aws_iam_group_membership.team.users
    description = "list of IAM User names"
}

output "group" {
    value = aws_iam_group_membership.team.group
    description = "IAM Group name"
}
