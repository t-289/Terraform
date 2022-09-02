output "id" {
    value = aws_instance.ec2.id
}

output "arn" {
    value = aws_instance.ec2.arn
}

output "key_name" {
    value = aws_instance.ec2.key_name
}

output "public_dns" {
    value = aws_instance.ec2.public_dns
}

output "public_ip" {
    value = aws_instance.ec2.public_ip
}

output "private_dns" {
    value = aws_instance.ec2.private_dns
}

output "private_ip" {
    value = aws_instance.ec2.private_ip
}

output "subnet_id" {
    value = aws_instance.ec2.subnet_id
}
