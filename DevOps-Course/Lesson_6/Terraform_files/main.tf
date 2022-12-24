############################
# Variables
#############################
variable "region" {
  default = "eu-west-1"
}

variable "environment" {
  default = "demo"
}

variable "profile" {
  default = "shayrm"
}

variable "base_name" {
  default = "devops-course"
}

#############################
## Locals
#############################

locals {
  base_name = "${var.environment}-${var.base_name}"
  tags = {
    "Name"        = local.base_name
    "Environment" = var.environment
  }
}

#############################
## Provider configuration
#############################
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}

provider "aws" {
 region = "eu-west-1"
}


#############################
# VPCs
#############################
#resource "aws_vpc" "vpc" {
#}

#############################
# Internet Gateways
#############################
#resource "aws_internet_gateway" "igw" {
#  vpc_id = aws_vpc.vpc.id
#  
#}
#
#resource "aws_route" "igw" {
#  route_table_id         = aws_vpc.vpc.default_route_table_id
#  destination_cidr_block = "0.0.0.0/0"
#  gateway_id             = aws_internet_gateway.igw.id
#}


#############################
# ec2 instance
#############################

resource "aws_instance" "vm-1" {
 ami           = "unknown"
 instance_type = "unknown"
}
