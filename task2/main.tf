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
#     RDS       #
#################
module "rds" {
  source  = "./modules/rds"

  identifier = "tankrds"
  name = "Weather"
  username = var.username
  password = var.password
  port = "3306"
  publicly_accessible = true
  skip_final_snapshot = true
  sg-ids = var.sg-ids
  tags = {
    owner = "mtvepam"
    nickname = "www_tank"
  }
}
output "o_rds_arn" {
  description = "Information about created DataBase - ARN"
  value = module.rds.o_rds_arn  
}
output "o_rds_name" {
  description = "Information about created DataBase - NAME"
  value = module.rds.o_rds_name  
}
output "o_rds_endpoint" {
  description = "Information about created DataBase - IPaddress PORT"
  value = module.rds.o_rds_endpoint  
}
output "o_rds_status" {
  description = "Information about created DataBase - STATUS"
  value = module.rds.o_rds_status  
}
#################
#     NGINX     #
#################
module "nginx" {
  source  = "./modules/ec2"
  
  ami = "ami-00e232b942edaf8f9"
  associate_public_ip_address = true
  availability_zone = "eu-central-1a"
  instance_type = "t2.micro"
  subnet_id  = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    name = "nginx"
    owner = "mtvepam"
    nickname = "www_tank"
  }
  user_data = file("userdata.sh")
}

output "o_nginx_publicip" {
  value = module.nginx.o_nginx_publicip
}
output "o_nginx_privateip" {
  value = module.nginx.o_nginx_privateip
}
output "o_nginx_status" {
  value = module.nginx.o_nginx_status
}