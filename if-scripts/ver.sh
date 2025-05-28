#! /bin/bash
if [ ! -z "$1" ]; then
	echo "Am primit arg: $1"
else
	echo "Nu am primit nimic!"
	read -p "Introduceti nume: " nume_cursant
	echo "Numele este: $nume_cursant"
fi
