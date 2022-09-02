
variable "subnets" {}

variable "identifier" {}

variable "stor_type" {
    type = string
    default = "gp2"
}

variable "alloc_storage" {
  default = 20
}

variable "db_name" {
    default = null
}

variable "db_engine" {
    default = ""
}

variable "eng_version" {
    default = ""
}

variable "inst_class" {
    default = ""
}

variable "db_username" {
    default = "admin"
}

variable "db_password" {
    default = ""
}

variable "sec_grp_rds" {}

variable "db_sub_gr" {}

variable "subnet_grp_name" {
    default = "default"
}

variable "storage_encryp" {
    type = bool
    default = false
}

variable "final_snapshot" {
    type = bool
    default = true
}

variable "public_access" {
    type = bool
    default = false
}

variable "multiaz" {
    type = bool
    default = false
}

variable "rds_depens_on" {}