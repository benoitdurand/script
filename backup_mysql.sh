#!/bin/sh

# Path to recovery directory (permissions should be 700 -- read-only root or admin)
backupdir="/Users/frdbecc/backup_mysql_databases"
destinationdir="/Volumes/PERSO_2TO/BACKUP/SQL"
ts=`date ''+%F''`

echo "Suppression des backups > 2 semaines"
find $destinationdir/ -mindepth 1 -mtime +14 -exec rm '{}' \;
# find /Users/frdbecc/Library/Mobile\ Documents/com~apple~CloudDocs/backup/mysql/ -mindepth 1 -mtime +14 -exec rm '{}' \;

# mysqldump the databases
dbs="partage suivibadge chargement hauteurpalette coaching_lcm raq pda poste_de_garde reporting transit transit-rh transit-em mysql logistraq suivibadge2"
for db in $dbs; do
    echo "Dumping $db"
    /usr/local/bin/mysqldump --opt --user=backup_user --password='SkaPd25qrrJZu4rB' $db > $destinationdir/${ts}_${db}.dump
	/usr/bin/gzip $destinationdir/${ts}_${db}.dump
	openssl aes-256-cbc -in $destinationdir/${ts}_${db}.dump.gz -out $destinationdir/${ts}_${db}.dump.enc -pass pass:SkaPd25qrrJZu4rB
    # scp -i /Users/frdbecc/.ssh/ed25519_backup_ben13paca.fr $destinationdir/${ts}_${db}.dump.enc backup@ben13paca.fr:/home/backup
done
echo "Dumping de toutes les bases"
/usr/local/bin/mysqldump --opt --user=backup_user --password='SkaPd25qrrJZu4rB' --all-databases > $destinationdir/${ts}_all_databases.dump
/usr/bin/gzip $destinationdir/${ts}_all_databases.dump
openssl aes-256-cbc -in $destinationdir/${ts}_all_databases.dump.gz -out $destinationdir/${ts}_all_databases.dump.gz.enc -pass pass:SkaPd25qrrJZu4rB

echo "Backup vers l'extérieur"
scp -i /Users/frdbecc/.ssh/ed25519_backup_ben13paca.fr -P 2233  $destinationdir/${ts}_*.enc backup@ben13paca.fr:/home/backup/SQL

echo "Suppression des fichiers SSL en local"
rm $destinationdir/*.enc

# echo "Move SSL file to iCloud"
# mv $recover/${ts}_all_databases.dump.gz.enc /Users/frdbecc/Library/Mobile\ Documents/com~apple~CloudDocs/backup/mysql/all_databases_${ts}.dump.gz.enc

# from a database dump, you would run:
# openssl aes-256-cbc -d -in filname.enc -out filename.gz
# unzip $recover/database_name_(timestamp).dump.gz
# mysql -u root -p database_name < $recover/database_name.dump

