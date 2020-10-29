#!/bin/bash
function eXXit {
if [ "$1" != "i" ]
then 
	if [ $# -eq 1 ]
	then
		exit 0
	elif  !( echo "$2" | grep -E -q "^[+-]?[0-9]+$" );
	then
		echo  -e "\033[31mExit code must be INT between -255 and 255!\033[0m"
		exit 1
	elif  [ $2 -gt  255 ]
	then
		echo -e "\033[31mExit code can be between -255 and 255!\033[0m"
		exit 1
	elif  [ $2 -lt -255 ]
	then
		echo -e "\033[31mExit code can be between -255 and 255!\033[0m"
		exit 1
	else
		exit $2
	fi
elif [ "$1" == "i" ]
then
	if !( echo "$2" | grep -E -q "^[+-]?[0-9]+$" );
	then
		echo -e "\033[31m Exit code must be INT between -255 and 255\033[0m"
	elif [ $2 -gt 255 ]
	then 
		echo -e "\033[31m Exit code can be between -255 and 255!\033[0m"
	elif [ $2 -lt -255 ]
	then
		echo -e "\033[31m Exit code can be between -255 and 255!\033[0m"
	else
		exit $2
	fi
fi 
}
