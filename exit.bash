#!/bin/bash
function eXXit {
	if [ $# -eq 0 ]
	then
		exit 0
	elif  !( echo "$1" | grep -E -q "^[+-]?[0-9]+$" );
	then
		echo  -e "\033[31mExit code must be INT between -255 and 255!\033[0m"
		exit 1
	elif  [ $1 -gt  255 ]
	then
		echo -e "\033[31mExit code can be between -255 and 255!\033[0m"
		exit 1
	elif  [ $1 -lt -255 ]
	then
		echo -e "\033[31mExit code can be between -255 and 255!\033[0m"
		exit 1
	else
		exit $1
	fi
}
