#!/bin/bash
function  search {
	. ./arg_count_check.bash
	arg_count $1 3
	if [ $? -eq 0 ]
        then
	   if [ -d $2 ]
	   then
	   	if [ -r $2 ]
	  	then
	   		grep -r $3 $2
		else
			echo -e "\033[31mNot enough rights for reading directory\033[0m"
		fi
	   else
	   	  echo -e "\033[31m Directory doesn't exist \033[0m"
	   fi
	fi
}
