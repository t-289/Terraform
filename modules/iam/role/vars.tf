variable "role_name" {
    type = string
    default = ""
}

variable "role_path" {
  type = string
  default = "/system/"
}

variable "file_name" {
    type = string
    default = null
}

variable "descrip " {
  type = string
  default = ""
}

variable "managed_policys" {
  type = list(string)
  default = [ "" ]
  
}