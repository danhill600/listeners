#!/bin/sh
if [[ $# == 1 ]]; then 
	curl ipinfo.io/$1 2> /dev/null | jq '.city, .region, .country'
	echo -e '\n'

elif [[ $# == 0 ]]; then
	read -p "what IP dude?: " ipaddress
	curl ipinfo.io/$ipaddress | jq '.city, .region, .country'
	echo -e '\n'
else 
	echo "that is too many arguments man."
fi
