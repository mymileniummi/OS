#!bin/bash
function menu {
	while :
	do
 	   echo "
---===Menu===---
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
			. ./calc.bash
			echo "Enter the operation"
			read arg1
			echo "Enter first number"
			read arg2
			echo "Enter second number"
			read arg3
			calc $arg1 $arg2 $arg3
		;;
		S)
			. ./search.bash
			echo "Enter directory"
			read arg1
			search $arg1
		;;
		R)
			. ./reverse.bash
			echo "Enter first file name"
			read arg1
			echo "Enter second file name"
			read arg2
			reverse $arg1 $arg2
		;;
		STR)
			echo "Enter a phrase"
			read arg1
			. ./strlen.bash 
			strlen $arg1
		;;
		E)
			echo "Exit code:"
			read arg1
			. ./exit.bash
			eXXit $arg1
		;;
		H)
			. ./help_information
			help
		;;
	esac
done
}

