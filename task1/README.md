## Добрый день, Алексей! 

## Task 1.1, 1.2 выполнены. Все установлено на Win10 по инструкции, кроме декодирования токена из base64. Оно выполнено в PowerShell 
 
 $MYTEXT = 'xxxxxxxxxxxxxxxxx'
 $DECODED = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($MYTEXT))
 Write-Output $DECODED

![](screenshot_dashboard_two_nginx.jpg)
 
 task1.yaml  содержит манифест
 screenshot_dashboard_two_nginx.jpg показана склейка скриншотов Dashboard Kubernetes
 inside_minikube.txt содержит сокращенный лог внутри minikube
 С Уважением, Татьяна


