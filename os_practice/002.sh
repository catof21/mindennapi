#!/bin/bash

#tetszőleges könyvtárakból indulva rekurzívan megkeresi a leghosszabb file-t (vagy az egyik leghosszabbat) és kiírja ennek adatait
#input parameters: könyvátrak, akármennyi

while [ #$ -ne 0 ]
	do
	find "$1" -type f -exec ls -ltr "{}" \; | sort -k 5 -n | tail -n 1
	shift
done

