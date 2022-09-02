variable "s3_domain" {}
variable "s3_origin" {}

variable "api_domain" {}
variable "api_origin" {}

variable "lb_domain" {}
variable "lb_origin" {}

variable "cached_meths" {
    default = ["GET", "HEAD"]
} 

variable "allowed_meths" {
    default = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
} 

variable "alias" {
    default = "web"
}

variable "allow_method" {
    default = [ "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT" ]
}

variable "cache_method" {
    default = ["GET", "HEAD"]
}

variable "cdn_depens_on" {}

variable "env" {}