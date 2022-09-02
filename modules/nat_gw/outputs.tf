output "id" {
    value = aws_nat_gateway.nat_gw.id
}

output "allocation_id" {
    value = aws_nat_gateway.nat_gw.allocation_id
}

output "subnet_id" {
    value = aws_nat_gateway.nat_gw.subnet_id
}

output "network_interface_id" {
    value = aws_nat_gateway.nat_gw.network_interface_id
}

output "private_ip" {
    value = aws_nat_gateway.nat_gw.private_ip
}

output "public_ip" {
    value = aws_nat_gateway.nat_gw.public_ip
}