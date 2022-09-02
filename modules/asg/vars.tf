variable "lc_id" {}

variable "desired" {
    default = 1
}

variable "max" {
    default = 3
}

variable "min" {
    default = 1
}

variable "asg_name" {
    default = "cluster-asg"
}

variable "subnets" {}
