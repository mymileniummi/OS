#!/bin/bash
function arg_count {
	red=033[31m
	clear=033[0m
	if [ $1 -lt $2 ]
	then
		echo -e  "\033[31m Not enough arguments \033[0m"
		return 1
	elif  [ $1 -gt $2 ]
	then
		echo -e "\033[31m Too many arguments \033[0m"
		return 1
	else
		return 0
	fi
}
