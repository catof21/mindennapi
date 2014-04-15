#!/bin/bash

#bash, ami tetszoleges konyvtarakbol kiindulva rekurzivan megszamolja az alkonyvtarakat, szamot ad vissza. 
#bemeno parameterek (tetszoleges szamu) az egyes konyvtarak nevei


while [ $# -ne 0 ] 
	do
	echo "${1} ez lesz "
#	echo $(find "$1" -type d | wc -l)
	find "$1" -type d | wc -l
	shift
	done

echo "vege"
