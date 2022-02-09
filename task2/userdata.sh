#! /bin/bash
sudo yum update -y
sudo yum info nginx 
sudo amazon-linux-extras install nginx1
sudo service nginx start 