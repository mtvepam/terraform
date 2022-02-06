#################
# common blocks #
#################
terraform {
  required_providers {
     aws = {
       source = "hashicorp/aws"
       version = "~>3.0"
     }
   }
   required_version = "~>1.0"
}
provider "aws" {
   version = "~>3.0"
   region = "eu-central-1"
}

#################
#   About  VPC  #
#################
data "aws_vpc" "o_vpc" {
  tags = {
    nickname = "www_tank"
  }
}
output "o_vpc_id" {
  description = "ID of the only VPC"
  value = data.aws_vpc.o_vpc.id  
}
output "o_vpc_cidr" {
  description = "The CIDR block of the VPC"
  value = data.aws_vpc.o_vpc.cidr_block
}
output "o_vpc_cidr6" {
  description = "The IPv6 CIDR block of the VPC"
  value = data.aws_vpc.o_vpc.ipv6_cidr_block
}
output "delimiter" {
    value = "========================="
}

#################
# About subnets #
#################
data "aws_subnets" "o_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.o_vpc.id]
  }
   tags = {
    nickname = "www_tank"
  }
}
data "aws_subnet" "o_subnet" {
  for_each = toset(data.aws_subnets.o_subnets.ids)
  id = each.value
}
output "subnet_availability_zones" {
  description = "Availability zones for every subnet"
  value = [for s in data.aws_subnet.o_subnet : s.availability_zone]
}
output "subnet_cidr_blocks" {
  description = "IP range for every subnet" 
  value = [for s in data.aws_subnet.o_subnet : s.cidr_block]
}

#########################
# About gecurity groups #
#########################
data "aws_security_groups" "o_sgs" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.o_vpc.id]
  }
   tags = {
    nickname = "www_tank"
  }
}
data "aws_security_group" "o_security_group" {
  for_each = toset(data.aws_security_groups.o_sgs.ids)
  id = each.value
}
output "security_group_names" {
  description = "SG names" 
  value = [for s in data.aws_security_group.o_security_group : s.name]
}
output "security_group_descriptions" {
  description = "SG descriptions" 
  value = [for s in data.aws_security_group.o_security_group : s.description]
}