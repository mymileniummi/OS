#!/bin/bash
function strlen {
	if  [ $# -lt 1 ]
	then
		echo "Not enough arguments"
	else
		echo ${#1}
	fi
}
