#!/bin/bash

oldIFS=$IFS     # sauvegarde du séparateur de champ
IFS=$'\n'     # nouveau séparateur de champ, le caractère fin de ligne

cd ~/Movies/v2b
ListFiles="$(find . -mindepth 1 -maxdepth 1 -type d)"
for ListFile in ${ListFiles}; do
	fbname=`basename "${ListFile}"`
	echo "$fbname"
	/Applications/AnyToISO.app/Contents/MacOS/AnyToISO /fromdir ${ListFile} ./$fbname.iso /label:${fbname}
done

IFS=$old_IFS
