#!/bin/bash
if [[ $# == 1 ]]; then 
	curl ipinfo.io/$1 2> /dev/null | jq '.city, .region, .country'

elif [[ $# == 0 ]]; then
	read -p "what IP dude?: " ipaddress
	curl ipinfo.io/$ipaddress | jq '.city, .region, .country'
else 
	echo "that is too many arguments man."
fi
