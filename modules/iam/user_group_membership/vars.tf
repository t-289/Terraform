variable "var.user_name" {
    type = string
    description = "The name of the IAM User to add to groups"
    default = ""
}

variable "var.groups_name" {
    type = string
    description = "A list of IAM Groups to add the user to"
    default = ""
}
