################################################################################
# RDS Module
################################################################################
resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  backup_retention_period = 0
 
  identifier           = var.identifier
  name                 = var.name
  username             = "${var.username}"
  password             = "${var.password}" 
  port                 = var.port
  skip_final_snapshot  = var.skip_final_snapshot
  vpc_security_group_ids = "${var.sg-ids}"
  tags                 = var.tags

}

