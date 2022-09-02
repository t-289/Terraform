resource "aws_nat_gateway" "nat_gw" {
    subnet_id = var.sub_id[0]
    allocation_id = var.eip_id
    depends_on = [var.nat_depends_on]
    tags = {
        Name = "${terraform.workspace}-${var.nat_gtw_name}"
        CostCenter = terraform.workspace
    }
}