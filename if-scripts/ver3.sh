#! /bin/bash

NUME=$1
PSS=$2

if [ "$NUME" != "nina" ] || [ "$PSS" != "test" ]; then
	echo "Mai incearca!"
else
	echo "Esti logat!"
fi

