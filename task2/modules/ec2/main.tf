################################################################################
# NGINX Module
################################################################################
resource "aws_instance" "nginx" {
  ami    = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone = var.availability_zone
  subnet_id  =  "${var.subnet_id}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
  tags             = var.tags
  user_data = var.user_data
}

