#! /bin/bash

read -p "Introduceti calea spre fisier de comparat: " cale 
hash_argument=$(sha256sum $cale | awk '{print $1}')
echo $hash_argument

for file in *.sh; do
	echo "Verificam fisierul: $file"
	hash_file=$(sha256sum $file | awk '{print $1}')
	echo $hash_file
	if [ "$hash_argument" == "$hash_file" ]; then
		echo "Am gasit fisierul: $file"
	       	exit 0	
	fi
done

echo "Nu a fost gasit niciun fisier!"
exit 1
