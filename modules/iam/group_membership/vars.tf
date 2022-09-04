variable "membership_name" {
    type = string
    description = "The name to identify the Group Membership"
    default = ""
}

variable "user_list" {
    type = list(string)
    description = "A list of IAM User names to associate with the Group"
    default = nul
}

variable "group_name" {
    type = string
    description = "The IAM Group name to attach the list of users to"
    default = ""
}
