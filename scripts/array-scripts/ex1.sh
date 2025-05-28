#! /bin/bash

cursanti=("Ana" "Bianca" "Dom" "Dan")

echo "Avem ${#cursanti[@]} cursanti"

for cursant in ${cursanti[@]}; do
	echo "Nume cursant: $cursant"
done
