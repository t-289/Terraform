resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = var.password_length
  require_lowercase_characters   = var.lowercase_characters
  require_numbers                = var.numbers
  require_uppercase_characters   = var.uppercase_characters
  require_symbols                = var.symbols
  allow_users_to_change_password = var.change_password
  max_password_age               = var.password_age
  password_reuse_prevention      = var.reuse_prevention 
}