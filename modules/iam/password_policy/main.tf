resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = password_length
  require_lowercase_characters   = lowercase_characters
  require_numbers                = numbers
  require_uppercase_characters   = uppercase_characters
  require_symbols                = symbols
  allow_users_to_change_password = change_password
  max_password_age               = password_age
  password_reuse_prevention      = reuse_prevention 
}