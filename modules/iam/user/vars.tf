variable "user_name" {
    type = list(string)
    description = "The user's name"
    default = []
}

variable "user_path" {
    type = list(string)
    description = "Path in which to create the user"
    default = ["/"]
}

variable "user_force_destroy" {
    type = bool
    description = "Destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices"
    default = false
}
