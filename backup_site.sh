#!/bin/bash
#
# Zip de tous les dossiers du répertoire Sites
#
ts=`date ''+%F''`
#backupsite="/Users/frdbecc/backup_sites"
sourcedir="/Users/frdbecc/Sites/"
destinationdir="/Volumes/PERSO_2TO/BACKUP/DEV"

cd $sourcedir

find $destinationdir/ -mindepth 1 -mtime +14 -exec rm '{}' \;

echo "Compression des dossiers"
for i in */; do
    echo "zip ->"${i%/}
    /usr/bin/zip -rq $destinationdir/${ts}_${i%/}.zip "$i" -x "${i%/}/*sql*" "${i%/}/*upload*" "${i%/}/*.git*";
    echo "ssl->"${i%/}
    openssl aes-256-cbc -in $destinationdir/${ts}_${i%/}.zip -out $destinationdir/${ts}_${i%/}.enc -pass pass:SkaPd25qrrJZu4rB
done

echo "Recopie des données vers l'extérieur"
scp -i /Users/frdbecc/.ssh/ed25519_backup_ben13paca.fr -P 2233 $destinationdir/${ts}_*.enc backup@ben13paca.fr:/home/backup/WEB

echo "Suppression des fichiers SSL en local"
rm $destinationdir/*.enc
