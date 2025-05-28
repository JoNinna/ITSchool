#! /bin/bash

user_to_check=$1

if id $user_to_check &> /dev/null; then
	echo "Userul $user_to_check exita"
	exit 0
else
	echo "Userul $user_to_check nu exita"
	exit 1
fi

