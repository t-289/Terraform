variable "user_name" {
    type = string
    description = "The name of the IAM User to add to groups"
    default = ""
}

variable "groups_name" {
    type = list
    description = "A list of IAM Groups to add the user to"
    default = ""
}
