resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = var.dns_hostnames
    enable_dns_support   = true
    instance_tenancy     = "default"
    tags = { 
        Name = terraform.workspace
    }
}
