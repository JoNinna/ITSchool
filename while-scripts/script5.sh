#! /bin/bash

incercari_ramase=3
parola_corecta="test"
user="nina"

este_logat_cu_succes="NO"

while [ $incercari_ramase -gt 0 ]; do
	read -p "User: " username
	read -p "Parola: " parola
	if [[ $username == $user && $parola == $parola_corecta ]]; then
		echo "Esti logat!"
		este_logat_cu_succes="YES"
		break
	else
		echo "Parola sau user gresite!"
		((incercari_ramase--))
		echo "Mai ai $incercari_ramase incerari"
		continue
	fi
done

if [ $este_logat_cu_succes == "YES" ]; then
	echo "Afisam site-ul: "
else
	echo "Contul este blocat!"
fi
