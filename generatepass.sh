if [[ $# < 1 ]] || [[ $1 = *"help"* ]]
then
	echo "$0 [Size of Password][AllowedSymbols (A-Z 1-9 a-z #!@#...)]"
	exit 0;
fi


size=$1


if [[ $# < 2 ]];
then
	AllowedS="[a-z][A-Z][0-9]_!@#\$%^!"
else
	AllowedS="$2"
fi

tr -dc $AllowedS < /dev/urandom | head -c $size
