#!/bin/bash

#Перечисляем сервисы, которые хотим мониторить
SERVICES="nginx ssh"

for service in $SERVICES; do
	echo "=== START CHECKING $service  ==="
	echo "DATE NOW: $(date)"
	echo "STATUS:"
	
	#Проверяем текущий сервис в цикле
	if [ "$(systemctl is-active "$service")" = "active" ]; then
	echo "SERVICE ACTIVE"
	else
	echo "SERVICE DEAD"
	fi
	
	echo "___________________________________________"
done

#Общая информация о дисках 
df -h

