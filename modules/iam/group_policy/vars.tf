variable "policy_name" {
    type = string
    description = "The name of the policy. If omitted, Terraform will assign a random, unique name"
    default = ""
}

variable "group_name" {
    type = string
    description = "The IAM group to attach to the policy"
    default = ""
}

variable "policy_file_path" {
    type = string
    description = "The policy document. This is a JSON formatted string"
    default = ""
}
