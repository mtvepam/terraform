## Добрый день, Егор! 
### Задание 2 выполнено. 

Выделены два модуля для rds и ec2(nginx) с наборами variables и outputs. В корневом main.tf есть вызовы обоих модулей и outputs из них. 
Файл userdata.sh  содержит UserData для сервера nginx, а terraform.tfvars(занесен в .getignore) - пароли на БД и прочую чувствительную информацию.

### скриншоты выполнения манифестов
![](1 tf init.jpg)
![](2 tf plan.jpg)
![](3 tf apply.jpg)

### скриншоты AWS c nginx
![](4 ec2.jpg)
![](5 nginx home page.jpg)

### скриншоты AWS c RDS
![](6 rds.jpg)
![](7 rds viewer.jpg)

### outputs
![](8 outputs.jpg) 
С Уважением, Татьяна


