#! /bin/bash

#Monitorizarea unui proces și repornirea automată dacă se oprește

while true; do 
	echo "hello @ $(date)" >> hello.log
	sleep 1
done
