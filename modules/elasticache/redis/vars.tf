variable "eng" {
    default = "redis"
}

variable "type" {
    default = "cache.t3.small"
}

variable "cache_nodes" {
    default = 1
}

variable "eng_version" {
    default = "6.x"
}

variable "port" {
    default = 6379
}

variable "parameter_group" {
    default = "default.redis6.x"
}

variable "subnets_ids" {}

variable "security_group" {}