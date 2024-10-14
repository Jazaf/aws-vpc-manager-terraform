provider "aws" {

    region ="me-south-1"           # قريب اكتب region السعودية بإذن الله
      access-key = var.aws_access_key
      secret_Key = var.aws_secret_key

}

# Create VPC 

resource "aws_vpc" "my_vpc"{
    cidr_block = var.vpc_cidr_block

    tags = {
        Name = "Terraform-my-VPC"
    }
}

# Create a subnet within a VPC 

resource "aws_subnet" "my_subnet"{ 
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.subnet_cidr_block
    tags = {
        Name = "Terraform-my-Subnet"
    }
}
# Create Internet Gateway 

resource "aws_internet_gateway" "my_internet_GT"{
    vpc_id = aws_vpc.my_vpc.id
    

    tags = {
        Name = "Terraform-my-Internet-GT"
    }
}

# Create Route Table and associate it with Internet Gateway

resource "aws_route_table" "my_route_table"{
    vpc_id = aws_vpc.my_vpc.id

route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.my_internet_GT.id
}

tags = {
    Name = "Terraform-my-Route-Table"
}
}

#Connect Subnet to Route Table

resourse "aws_route_table_association" "my_route_table_association" {
subnet_id = aws_subnet.my_subnet.id
route_table_id = aws_route_table.my_route_table.id
}

