#!/bin/bash
function  search {
	. ./arg_count_check.bash
	arg_count $1 3
	if [ $? -eq 0 ]
        then
		if  ! [ -d $2 ]
		then
			echo -e "\033[31mDirectory doesn't exist. Or it is a file\033[0m"
	   	elif ! [ -r $2 ]
		then
			echo -e "\033[31mNot enough rights for reading directory\033[0m"
	  	else
	   		grep -rs $3 $2
		fi
	fi
}
