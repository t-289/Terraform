resource "aws_autoscaling_group" "asg" {
  desired_capacity     = var.desired
  launch_configuration = var.lc_id
  max_size             = var.max
  min_size             = var.min
  name                 = "${var.asg_name}-${terraform.workspace}"
  vpc_zone_identifier  =  var.subnets 

  tags = {
    Name = "${terraform.workspace}-${var.asg_name}-${var.env}"
    CostCenter = terraform.workspace
  }

}