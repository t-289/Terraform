data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "ec2" {
    ami = var.ami_id == null ? data.aws_ami.ubuntu.id : var.ami_id
    instance_type = var.type
    security_groups = [ var.sg ]
    subnet_id  = var.subnet
    key_name = var.pem
    iam_instance_profile = var.instance_profile
    
    root_block_device {
      volume_type = var.vol_type
      volume_size = var.vol_size
    }

}
