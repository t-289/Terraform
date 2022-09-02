resource "aws_route" "public_route" {
    route_table_id = var.rtb_id
    count = var.rtb_count
    destination_cidr_block = var.rtb_destination
    gateway_id = var.rtb_gateway
    depends_on = [ var.route_depends_on ]
}

