variable "vpc_cidr" {}

variable "dns_hostnames" {
    default = true
}

variable "dns_support" {
    default = true
}

variable "tenancy" {
    default = "default"
}

variable "vpc_tenancy" {
    default = "default"
}
