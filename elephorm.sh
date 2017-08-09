#!/bin/bash

echo "penser a mettre a jour le fichier cookie.txt (ENTRER pour continuer)"
read touche

grep "<a href=" un.txt > deux.txt
cut -d '"' -f 2 deux.txt > trois.txt
sed -ie "s/^/videos.elephorm.com/" trois.txt
sed -ie 's/$/\/video/' trois.txt

CPT=0

# NAME=$(head -n 1 trois.txt | cut -d '/' -f 2 )
# mkdir -p ~/Movies/elephorm/${NAME}



for line in $(cat ~/trois.txt); do

	NAME=$(echo $line | cut -d '/' -f 2 )
	if [[ ! -e ~/Movies/elephorm/${NAME} ]]; then
	            mkdir -p ~/Movies/elephorm/${NAME}
	            CPT=0
	fi

	cd ~/Movies/elephorm/${NAME}

	let CPT++
	NB=$(printf %02d ${CPT})
	add=$(echo $line | cut -d '/' -f3)

	command curl -o ${NB}-${add}.mp4 -b SESS0080a89dca73b9774d29c076a5506c9f=d9c832d04e3d06bab097a8450a1faead "$line" ; done
	#SESS0080a89dca73b9774d29c076a5506c9f	d4abfa003d2170de02f7f1653e8afca4
	#command wget --load-cookies ~/cookie.txt --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" --referer http://www.elephorm.com/apprendre-capture-one-9-imagerie-photographe/nouveautes-version-9 -O ${NB}-${add}.mp4 "$
