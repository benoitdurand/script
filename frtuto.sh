#!/bin/bash
cd ~/Movies/fr.tuto.com
# Nombre de fichiers
FIN=15
# URL
URL=fileserver.tuto.com:443/dashboard/mp4:Ea51sAJUbvVHOyW4__X2bL1QRX_F1LpvzSsX09uIfaw=/media_w1943693345_tkdHV0b2VuZHRpbWU9MTQ3Mzk3NzU1MiZ0dXRvc3RhcnR0aW1lPTE0NzM5NjMxNTImdHV0b2hhc2g9WnlQQ1lUa1pOcHdpSFdwejRabm9uZzI4ekNGYkw2VnlJZ2lpMW9Oc3ZqRT0=_
# Nom du fichier final
FINALFILE=6
FORMATION="MENU"

mkdir -p ${FORMATION}/${FINALFILE}
cd ${FORMATION}/${FINALFILE}

for ((ID=0; ID<=${FIN}; ID++)); do
FILE=$(printf %04d ${ID}).ts
wget -O ${FILE} -r -l5 --no-parent --no-host-directories --cut-dirs=2 ${URL}${ID}.ts;

done

for i in *.ts ; do cat $i >>temp.mpg ; done ; ffmpeg -i temp.mpg ${FINALFILE}.mp4
#cat *.ts >${FINALFILE}.ts
rm *.ts *.mpg

cd ~

#Augmenter le volume d'un fichier video avec ffmpeg

#En ligne de commande:
#ffmpeg -i file.mpg -vcodec copy -vol 1024  file_louder.mpg
#-i : fichier en entrée à modifier
#-vcodec copy: laisser la partie video inchangée
#-vol 1024: multiplie le volume par 4 ( la valeur de base est -vol 256)
