#!/bin/sh

DATE=$(date +%Y.%m.%d)
NEW_FILE="system-$DATE.tar.gz"
DIR_NAME="/usr/home/yourname/data/.backup/system-$DATE"
mkdir "$DIR_NAME"
DIR_NAME_USR="/usr/home/yourname/data/.backup/system-$DATE/usr"
mkdir "$DIR_NAME_USR"
DIR_NAME_USR="/usr/home/yourname/data/.backup/system-$DATE/usr/local"
mkdir "$DIR_NAME_USR"
DIR_NAME_USR="/usr/home/yourname/data/.backup/system-$DATE/usr/local/etc"
mkdir "$DIR_NAME_USR"
DIR_NAME_VAR="/usr/home/yourname/data/.backup/system-$DATE/var"
mkdir "$DIR_NAME_VAR"

cp -R /usr/local/etc/apache24 $DIR_NAME_USR
cp -R /usr/local/etc/dovecot $DIR_NAME_USR
cp -R /usr/local/etc/exim $DIR_NAME_USR
cp -R /usr/local/etc/fido $DIR_NAME_USR
cp -R /usr/local/etc/letsencrypt $DIR_NAME_USR
cp -R /usr/local/etc/mpd5 $DIR_NAME_USR
cp -R /usr/local/etc/namedb $DIR_NAME_USR
cp -R /usr/local/etc/newsyslog.conf.d $DIR_NAME_USR
cp -R /usr/local/etc/periodic $DIR_NAME_USR
cp -R /usr/local/etc/postfix $DIR_NAME_USR
cp -R /usr/local/etc/racoon $DIR_NAME_USR
cp -R /usr/local/etc/rsync $DIR_NAME_USR
cp -R /usr/local/etc/ssl $DIR_NAME_USR
cp -R /usr/local/etc/syslog.d $DIR_NAME_USR
cp -r /usr/local/etc $DIR_NAME_USR
cp -R /var/vmail $DIR_NAME_VAR
cp -R /etc $DIR_NAME

cd /usr/home/yourname/data/.backup
tar -czvf "$NEW_FILE" "$DIR_NAME"

if [ $? -eq 0 ]; then
    echo "The archive was successfully created."
else
    echo "Archive creation error."
    exit 1
fi

rm -R "$DIR_NAME"

exit
