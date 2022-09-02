resource "aws_security_group" "sg" {
  name        = "${terraform.workspace}-${var.sg_name}"
  vpc_id      = var.sg_vpc_id
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
        Name = "${terraform.workspace}-${var.sg_name}"
        CostCenter = terraform.workspace
    }
}