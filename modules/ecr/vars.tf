variable "ecr_name" {
    default = [ "registry" ]
}

variable "mutability" {
    default = "MUTABLE"
}

variable "scan" {
    default = true
}