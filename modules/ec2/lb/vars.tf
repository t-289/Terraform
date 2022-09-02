variable "lb_name" {
    default = "stage"
}

variable "intern" {
    default = false
}

variable "lb_type" {
    default = "application"
}

variable "lb_sg" {}

variable "subnet" {}

variable "deletion_protectio" {
    default = true
}