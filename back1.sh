DATE=`date +"%d_%b_%Y_%H%M"`
SQLFILE=/home/nikhil/mybackup/db_backup_${DATE}.sql
DATABASE="testdb"
USER="root"
PASSWORD="root"

sudo mysqldump -u ${USER} -p${PASSWORD} ${DATABASE}|gzip > ${SQLFILE}.gz


sudo find /home/nikhil/mybackup/. -mtime +2 -exec rm {} \;
