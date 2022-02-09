## Добрый день, Егор! 
### Задание 2 выполнено. 

Выделены два модуля для rds и ec2(nginx) с наборами variables и outputs. В корневом main.tf есть вызовы обоих модулей и outputs из них. 
Файл userdata.sh  содержит UserData для сервера nginx, а terraform.tfvars(занесен в .getignore) - пароли на БД и прочую чувствительную информацию.

### скриншоты выполнения манифестов
![](1_tf_init.jpg)
![](2_tf_plan.jpg)
![](3_tf_apply.jpg)

### скриншоты AWS c nginx
![](4_ec2.jpg)
![](5_nginx_home_page.jpg)

### скриншоты AWS c RDS
![](6_rds.jpg)
![](7_rds_viewer.jpg)

### outputs
![](8_outputs.jpg) 
С Уважением, Татьяна


