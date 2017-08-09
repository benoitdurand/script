#!/bin/bash

oldIFS=$IFS     # sauvegarde du séparateur de champ
IFS=$'\n'     # nouveau séparateur de champ, le caractère fin de ligne

ListFiles="$(find /Volumes/EXTERNE_2TO/Formations/Informatique/Video2Brain/A_convertir/*.7z -type f -prune)"
for ListFile in ${ListFiles}; do
	fbname=`basename "${ListFile}" .7z`
	echo "$fbname"
	 /Applications/AnyToISO.app/Contents/MacOS/AnyToISO /convert ${ListFile} /Volumes/EXTERNE_2TO/Formations/Informatique/Video2Brain/A_Classer/$fbname.iso
done

IFS=$old_IFS
