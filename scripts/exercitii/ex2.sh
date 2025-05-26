#! /bin/bash

if [ -z $1 ]; then
	echo "Niciun argument transmis!"
	while [ -z "$NUME_CURSANT" ]; do
		read -p "Introduceti numele cursantului: " NUME_CURSANT
	done
else
	NUME_CURSANT=$1
fi

echo "Variabila introdusa este: $NUME_CURSANT"

