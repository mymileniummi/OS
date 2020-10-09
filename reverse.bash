#!/bin/bash
function reverse {
	. ./arg_count_check.bash
	arg_count $1 3
	if [ $? -eq 0 ]
	then
		if [ $2 == $3 ]
		then
			if ! [ -e temp.txt ]
			then
			echo -e "\033[31mFile temp.txt doesn't exist, no way to reverse in itself\033[0m"
			else
			echo -n > temp.txt
			cat $2 > temp.txt
			rev temp.txt > $3
			echo "Reversed successfully"
			fi
		elif [ ! -e $2 ]
		then
			echo -e "\033[31m File for reading doesn't exist\033[0m"
		elif [ $3 = "" ]
		then
			echo -e "\033[31m Can not create file with unknown name \033[0m"
		elif [ ! -r $2 ]
		then
			echo -e "\033[31m Not enough rights for reading file \033[0m"
		elif [ -e $3 -a ! -w $3 ]
		then
		        echo -e "\033[31m Not enough rights for writing in file \033[0m"
		elif [ -e $3 ] && [ ! -w $3 ] || [[ -d $3 ]] || ! touch "$3" 2> /dev/null;
		then
			echo -e "\033[31m Can't write in file \033[0m"
		else
			rev $2>$3
			echo "Reversed successfully"
		fi
	fi
}
