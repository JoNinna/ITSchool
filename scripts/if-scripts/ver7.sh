#! /bin/bash

CALE=$1

if [ -z "$CALE" ]; then
	echo "Nu ai introdus calea spre executabil!"
	echo "Exemplu de rulare:"
	echo "$0 /cale/catre/fisier/script.sh"
	exit 1
fi

if [ ! -f "$CALE" ]; then
	echo "Fisierul nu exista!"
	exit 2
fi

if [ ! -x "$CALE" ]; then
	echo "Nu avem drept de executie!"
	exit 3
fi

exit_code=$?

echo "Exit cod ultima comanda: " $exit_code

if bash $CALE; then 
	echo "Fisier executat cu succes!"
	exit 0
else
	echo "Script-ul a iesit cu eroarea: $exit_code"
	exit 4
fi

echo "Totul in regula!"

