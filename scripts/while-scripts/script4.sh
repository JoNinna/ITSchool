#! /bin/bash

incercari_ramase=3
parola_corecta="test"
user="nina"

while [ $incercari_ramase -gt 0 ]; do
	read -p "User: " username
	read -p "Parola: " parola
	if [[ $username == $user && $parola == $parola_corecta ]]; then
		echo "Esti logat!"
		break
	else
		echo "Parola sau user gresite!"
		((incercari_ramase--))
		echo "Mai ai $incercari_ramase incerari"
		continue
	fi
done

