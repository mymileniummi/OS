#!bin/bash
function menu {
	while :
	do
 	   echo -e "
---===\033[36mMenu\033[0m===---
 enter:
1) C for calc
2) S for search
3) R for reverse
4) STR for strlen
5) L for log
6) E for exit
7) H for help"
	read code
	case $code in
		C)
		if [ -e calc.bash ]
		then 
			. ./calc.bash
			echo "Enter the operation"
			read  arg1
			echo "Enter first number"
			read  arg2
			echo "Enter second number"
			read  arg3
			calc 4 $arg1 $arg2 $arg3
		else
		echo -e "\033[31mcalc.bash file is damaged function is not available\033[0m"
		fi
		;;
		S)
		if [ -e search.bash ]
		then
			. ./search.bash
			echo "Enter directory and regular expression"
			read arg1
			read arg2
			search 3 $arg1 $arg2
		else
		echo -e "\033[31msearch.bash file is damaged function is not available\033[0m"
		fi
		;;
		R)
		if [ -e reverse.bash ]
		then 
			. ./reverse.bash
			echo "Enter first file name"
			read arg1
			echo "Enter second file name"
			read arg2
			reverse $arg1 $arg2	
		else
		echo -e "\033[31mreverse.bash file is damaged function is not available\033[0m"
		fi
		;;
		L)
		if [ -e log.bash ]
		then 
			. ./log.bash
			log
		else
		echo -e "\033[31mlog.bash file is damaged function is not available\033[0m"
		fi
		;;
		STR)
			echo "Enter a phrase"
			read arg1
			echo ${#arg1}
		;;
		E)
		if [ -e exit.bash ]
		then 
			echo "Exit code:"
			read arg1
			. ./exit.bash
			eXXit $arg1
		else
		echo -e "\033[31mexit.bash file is damaged function is not available\033[0m"
		fi
		;;
		H)
		if [ -e help.bash ]
		then 
			. ./help.bash
			help
		else
		echo -e "\033[31mhelp.bash file is damaged function is not available\033[0m"
		fi
		;;
		*)
			echo -e  "\033[31mUnknown command\033[0m"
	esac
done
}
