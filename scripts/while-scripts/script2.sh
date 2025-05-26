#! /bin/bash

while true; do
	read -p "Cale director: " cale_dir
	if [ -z "$cale_dir" ]; then
		echo "Atentie, nu ai introdus nimic!"
		continue
	fi
	if [ ! -d "$cale_dir" ]; then
		echo "Calea introdusa nu contine un director!"
		continue
	fi
	if [ -w "$cale_dir" ]; then
		echo "Toate validarile au fost facute!"
		echo "Acum se poate citi din director!"
		break
	else
		echo "Nu aveti drept de read!"
		continue
	fi
done

echo "O zi frumoasa in continuare!"
echo $(ls -lad $cale_dir)
