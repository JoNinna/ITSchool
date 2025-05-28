#! /bin/bash

if [ "$#" -ne 1 ]; then
	echo "Atasati un argument la rularea scriptului!"
	echo "$0 <nume_utilizator>"
	exit 1
fi

if [ -z "$NUME_CURSANT" ]; then
	echo "Variabila nu exista!"
	export NUME_CURSANT=$1
else
	echo "Variabila exista!"
fi

echo "Numele cursantului este: $NUME_CURSANT"
