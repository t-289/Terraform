resource "aws_route_table" "rtb" {
  vpc_id = var.route_vpc_id
  
  tags = {
    Name = "${terraform.workspace}-${var.route_table_name}"
    Application = terraform.workspace
  }

  depends_on = [ var.rtb_depens_on ]
}