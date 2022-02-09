#################
# outputs for RDS
#################
output "o_rds_arn" {
  description = "ARN of DataBase"
  value = aws_db_instance.rds.arn
}

output "o_rds_name" {
  description = "DataBase name"
  value = aws_db_instance.rds.name
}

output "o_rds_endpoint" {
  description = "DataBase connection point"
  value = aws_db_instance.rds.endpoint
}

output "o_rds_status" {
  description = "DataBase status"
  value = aws_db_instance.rds.status
}
