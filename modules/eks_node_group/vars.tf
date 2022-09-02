variable "eks_cluster_name" {}
variable "node_role" {}
variable "subnets" {}

variable "env" {
    default = "hmg"
}

variable "desired" {
    default = 2
}

variable "max" {
    default = 3
}

variable "min" {
    default = 2
}

variable "eks_node_group" {
    default = "node"
}

variable "type" {
    default = [ "t3.large" ]
}