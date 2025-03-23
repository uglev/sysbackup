# sysbackup
Скрипт выполняет копирование и архивирование важных конфигурационных файлов FreeBSD 14.x, может быть дополнен по желанию и необходимости. Директория /usr/home/yourname/data/.backup должна существовать.

Crontab:

10      1       *           *           *       /usr/home/yourname/sysbackup.sh
