#!/bin/bash
function eXXit {
	if [ $# -eq 0 ]
	then
		exit 0
	elif  [ $1 -gt  255 ]
	then
		echo "Exit code can be between 0 - 255!"
	else
		exit $1
	fi
}
