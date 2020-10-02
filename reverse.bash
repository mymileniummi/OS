#!/bin/bash
function reverse {
	if [ $# -lt 2 ]
	then
		echo "Not enough arguments"
	elif [ ! -e $1 ]
	then
		echo "File for reading doesnt exists"
	elif [ ! -r $1 -o ! -r $2 ]
	then
		echo "Not enough rights for writing/reading file"
	else
		rev $1 > $2
		echo "Reversed succesfully"
	fi
}
