resource "aws_internet_gateway" "igw" {
    vpc_id = var.igw_vpc_id
    tags = {
        Name = "${ terraform.workspace}-${var.igw_name}"
        CostCenter = terraform.workspace
    }
}