variable "ver" {
  default = "7.10"
}

variable "env" {
  default = "prod"
}

variable "type" {
  default = "t3.medium.elasticsearch"
}

variable "sub_ids" {
}

variable "sg_ids" {
  type = list
}

variable "sec_options" {
  default = true
}

variable "internal_user_db" {
  default = true
}

variable "master_user" {
  type        = string
  default     = ""
  description = "ElasticSearch main user"
}

variable master_pass {
  type        = string
  default     = ""
  description = "ElasticSearch main user password"
}


