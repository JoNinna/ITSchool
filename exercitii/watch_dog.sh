#! /bin/bash

while true; do
	if pgrep hello &> /dev/null; then
		echo "Scriptul inca ruleaza ..."
		sleep 5
	else
		echo "hello.sh va fi repornit!"
		nohup ./hello.sh &
	fi
done
