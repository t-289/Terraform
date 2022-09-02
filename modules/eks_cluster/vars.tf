variable "iam_cluster_arn" {}

variable "security_group_cluster" {}

variable "subnets" {}

variable "iam_node_arn" {}

variable "env" {
  default = "hmg"
}