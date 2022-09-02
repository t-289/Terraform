variable "ami_id" {
    default = null
}

variable "type" {
    default = "t3.micro"
}

variable "sg" {
    type = string
}

variable "pem" {
    default = null
}

variable "subnet" {}

variable "vol_type" {
    default = "gp2"
}

variable "vol_size" {
    default = 8
}

variable "instance_profile" {
    default = null
}
