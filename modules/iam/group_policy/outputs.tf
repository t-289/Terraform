output "id" {
    value = aws_iam_group_policy.group_policy.id
    description = "The group policy ID"
}

output "group" {
    value = aws_iam_group_policy.group_policy.group
    description = "The group to which this policy applies"
}

output "name" {
    value = aws_iam_group_policy.group_policy.name
    description = "The name of the policy"
}

output "policy" {
    value = aws_iam_group_policy.group_policy.policy
    description = "The policy document attached to the group"
}
