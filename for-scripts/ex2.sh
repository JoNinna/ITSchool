#! /bin/bash

user_corect="admin"
parola_corecta="1234"

for index in {1..3}; do
	while [ -z "$username" ]; do
		read -p "Username: " username
	done
	read -p "Parola: " parola
	echo "Userul a introdus username-ul: $username si parola: $parola"
	if [[ $username != $user_corect || $parola != $parola_corecta ]]; then
		echo "Gresit! Mai ai $((3-index)) incercari!"
	else
		echo "Esti logat!"
		continue
	fi
done
