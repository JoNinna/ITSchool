#! /bin/bash

NUME=$1
VARSTA=$2

if [ "$NUME" == "nina" ] && [ "$VARSTA" -eq 25 ]; then
	echo "Ai ghicit!"
else
	echo "Mai incearca!"
fi
