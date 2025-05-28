#! /bin/bash

#verifica checksum pentru a verifica integritatea fisierelor

for f in *.sh; do
	sha256sum $f
done
