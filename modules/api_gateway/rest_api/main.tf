resource "aws_api_gateway_rest_api" "api_gtw_rest" {
  name        = "${var.api_name}-${terraform.workspace}"
  description = var.api_description

  tags = {
    Name = "${terraform.workspace}-${var.api_name}-${var.env}"
    CostCenter = terraform.workspace
  }
}