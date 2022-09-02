resource "aws_dynamodb_table" "dynamodb_tb" {
  name           = "${terraform.workspace}-${var.name}-${var.env}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = var.h_key
  range_key      = var.r_key

   attribute {
    name = var.h_key
    type = "N"
  }

  attribute {
    name = var.r_key
    type = "S"
  }

  tags = {
    Name        = "${terraform.workspace}-${var.name}"
    Environment = var.env
    CostCenter = terraform.workspace
  }
}