output "vpc_id" {
    description = "ID of the VPC"
    value = aws_vpc.my_vpc.id
}

output "subnet_id" {
    description = "ID of the Subnet"
    value = aws_subnet.my_subnet.id
}