variable "name" {
    type = string
    description = "The user's name"
    default = ""
}

variable "path" {
    type = string
    description = "Path in which to create the user"
    default = "/"
}

variable "force_destroy" {
    type = bool
    description = "Destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices"
    default = false
}
