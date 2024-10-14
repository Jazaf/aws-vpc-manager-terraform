variable "aws_access_key" {
    description = "AWS Access key"
    type     =  string
}

variable "aws_secret_key" {
    description = "AWS Secret key"
    type     =  string
}

variable "vpc_cidr_block" {
    description = " The CIDR block for the VPC "
    type     =  string
}

variable "subnet_cidr_block" {
    description = "" The CIDR block for the Subnet"
    type     =  string
}