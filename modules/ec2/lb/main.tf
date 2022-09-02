resource "aws_lb" "lb" {
  name               = "${terraform.workspace}-${var.lb_name}"
  internal           = var.intern
  load_balancer_type = var.lb_type
  security_groups    = [ var.lb_sg ]
  subnets            = var.subnet

  enable_deletion_protection = var.deletion_protectio


  tags = {
    Name = "${terraform.workspace}-${var.lb_name}"
    Environment = var.env
    CostCenter = terraform.workspace
  }
}