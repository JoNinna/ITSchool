if [ "$#" -ne 1 ]; then
	echo "Scriptul asteapta exact un paramentru"
	echo "A primit $#"
	echo "Exemplu de rulare: "
	echo "$0 /tmp"
	if [ -z "$DIRECTOR_DEFAULT" ]; then
		echo "Var de mediu DIRECTOR_DEFAULT nu a fost setata"
		exit 1
	else
		echo "Scriptul o sa foloseasca: $DIRECTOR_DEFAULT"
		CALE_DIRECTOR=$DIRECTOR_DEFAULT
	fi
else
	CALE_DIRECTOR=$1
	echo "Am primit param corecti!"
fi

if [ -d "$CALE_DIRECTOR" ]; then
	NO_FILES=$(ls -la $CALE_DIRECTOR | wc -l)
	echo "In folderul $CALE_DIRECTOR sunt $NO_FILES fisiere"
else
	echo "$CALE_DIRECTOR nu exista!"
fi
