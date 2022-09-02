resource "aws_eip" "eip" {
    depends_on = [ var.eip_depens_on ]
    
    tags = {
        Name = "${var.eip_name}-${ terraform.workspace}"
        Environment = var.env
        CostCenter = terraform.workspace
    }
}