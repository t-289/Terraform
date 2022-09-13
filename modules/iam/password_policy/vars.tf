variable "password_length" {
    type = number 
    description = "Minimum length to require for user passwords"
    default = 16
}

variable "lowercase_characters" {
    type = bool
    description = "Require lowercase characters for user passwords"
    default = true
}

variable "numbers" {
    type = bool
    description = "Require numbers for user passwords"
    default = true
}

variable "uppercase_characters" {
    type = bool
    description = "require uppercase characters for user passwords"
    default = true
}

variable "symbols" {
    type = bool
    description = "Require symbols for user passwords"
    default = true
}

variable "change_password" {
    type = bool 
    description = "Allow users to change their own password"
    default = true
}

variable "password_age" {
  type = number
  description = "The number of days that an user password is valid"
  default = 35
}

variable "reuse_prevention" {
  type = number
  description = "The number of previous passwords that users are prevented from reusing"
  default = 5
}
