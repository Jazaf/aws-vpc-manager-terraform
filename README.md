# AWS VPC Managerusing Terraform
This project represent how to create and manage a VPC on AWS using Terraform.

## Requirements
-- AWS Account
-- AWS CLI configured
-- Terraform installed 

## Setup

1. Clone the repository.
2. Create a 'terraform.tfvars' file and fill in your AWS credentials and CIDR blocks:

'''hcl
aws_access_key = "your-access-key"
aws_secret_key = "your-secret-key"
vpc_cidr_block = "10.0.0.0/16"
subnet_cidr_block = "10.0.1.0/24"