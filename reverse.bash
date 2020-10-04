#!/bin/bash
function reverse {
	. ./arg_count_check.bash
	arg_count $1 3
	if [ $? -eq 0 ]
	then
		if [ ! -e $2 ]
		then
			echo -e "\033[31m File for reading doesnt exists \033[0m"
		elif [ $3 = "" ]
		then
			echo -e "\033[31m Can not create file with unknown name \033[0m"
		elif [ ! -r $2 ]
		then
			echo -e "\033[31m Not enough rights for reading file \033[0m"
		elif [ -e $3 -a ! -r $3 ]
		then
		        echo -e "\033[31m Not enough rights for writing in file \033[0m"
		else
			echo -n > temp.txt
			cat $2 > temp.txt
			rev temp.txt > $3
			echo "Reversed succesfully"
		fi
	fi
}
