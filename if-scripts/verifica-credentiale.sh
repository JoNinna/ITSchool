UTILIZATOR=$1
PAROLA=$2

if [ "$UTILIZATOR" != "admin" ] || [ "$PAROLA" != "1234" ]; then
	echo "User sau parola gresita!"
	exit 1
else
	echo Utilizator logat!
fi
