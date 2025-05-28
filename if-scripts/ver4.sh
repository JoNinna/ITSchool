#! /bin/bash

NUME=$1
PSS=$2
AGE=$3

if [ "$NUME" != "nina" ] || [ "$PSS" != "test" ] || [ "$AGE" -lt 18 ]; then
	echo "Mai incearca!"
else
	echo "Esti logat!"
fi

