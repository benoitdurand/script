#!/bin/bash

oldIFS=$IFS     # sauvegarde du séparateur de champ
IFS=$'\n'     # nouveau séparateur de champ, le caractère fin de ligne

ListRepFirst="$(find * -type d -prune)"
for RepFirst in ${ListRepFirst}; do
	echo "${RepFirst}"
	cd ""${RepFirst}""

	ListeRep="$(find * -type d -prune)"   # liste des repertoires sans leurs sous-repertoires
		for Rep in ${ListeRep}; do
		echo "${Rep}"
		
		# Suppression des fichiers *.db si necessaire
		if test -f "${Rep}"/*.db; then
 			rm "${Rep}"/*.db 
		fi
	
               # Suppression des fichiers *.nfo si necessaire
                if test -f "${Rep}"/*.nfo; then
                        rm "${Rep}"/*.nfo
                fi

		# Suppression des fichiers *.txt si necessaire
		if test -f "${Rep}"/*.txt; then
			rm "${Rep}"/*.txt
		fi

		if [ ! -f "${Rep}"/*.txt ] 
		then
                        convert "${Rep}"/* "${Rep}".pdf
		else
			echo "Fichier PDF déjà présent"
                fi
		
		done
	cd ..
done

IFS=$old_IFS
