#! /bin/bash

NUME=$1
PSS=$2
AGE=$3

if [ "$NUME" != "nina" ] || [ "$PSS" != "test" ]; then
	echo "Acces restrictionat!"
	exit 2
fi

echo "Am verificat varsta:"

if [[ "$AGE" -gt 18 ]]; then
	echo "Varsta ok! Esti logat!"
	exit 0
fi

echo "Varsta prea mica!"
exit 3
