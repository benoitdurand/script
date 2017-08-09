#!/bin/bash
cd ~/Movies/v2b
# Nombre de fichiers
DEBUT=1
FIN=9
# URL
NUM=989
CHAPITRE=01

BASEFILE=FR_${NUM}_${CHAPITRE}_
BASE=FR_${NUM}/FR_${NUM}_${CHAPITRE}_
URL1=html5.v2bcdn.com/fr/${BASE}
URL2=_XR25R.mp4?ece058df664790e5cc127b90d6e6164700fce288f63c22e126ffc96a1bf2aa9415f182897259c466ee247f0a8b1f8a651c2bacf8180590830e2ffce8a80eb1e41961af811c04d42c70d48387bd669f4fb4
#URL2=_XR25R.mp4?ece058df664790e5cc127b9bd3e61647b0d47be300b51f9d859397394650bd1824e0
# Nom du fichier final
FINALFILE=${CHAPITRE}
FORMATION="COULEUR"

mkdir -p ${FORMATION}/${FINALFILE}
cd ${FORMATION}/${FINALFILE}

for ((ID=${DEBUT}; ID<=${FIN}; ID++)); do
FILE=${BASEFILE}$(printf %02d ${ID}).mp4
NB=$(printf %02d ${ID})
wget --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:26.0) Gecko/20100101 Firefox/26.0" -O ${FILE} -r -l5 --no-parent --no-host-directories --cut-dirs=2 ${URL1}${NB}${URL2};

done

#cd ~

#Augmenter le volume d'un fichier video avec ffmpeg

#En ligne de commande:
#ffmpeg -i file.mpg -vcodec copy -vol 1024  file_louder.mpg
#-i : fichier en entrée à modifier
#-vcodec copy: laisser la partie video inchangée
#-vol 1024: multiplie le volume par 4 ( la valeur de base est -vol 256)


