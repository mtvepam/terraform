output "o_nginx_publicip" {
  value = aws_instance.nginx.public_ip
}

output "o_nginx_privateip" {
  value = aws_instance.nginx.private_ip
}

output "o_nginx_status" {
  value = aws_instance.nginx.instance_state
}
