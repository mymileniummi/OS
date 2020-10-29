#!bin/bash
function menu {
	while :
	do
 	   echo -e "
---===\033[36mMenu\033[0m===---
 enter:
1) c for calc
2) s for search
3) r for reverse
4) str for strlen
5) l for log
6) e for exit
7) h for help"
	read code
	case $code in
		c)
		if [ -e calc.bash ]
		then 
			. ./calc.bash
			echo "Enter the operation, first, and second numbers"
			read  arg1 arg2 arg3
			calc 4 $arg1 $arg2 $arg3
		else
		echo -e "\033[31mcalc.bash file is damaged function is not available\033[0m"
		fi
		;;
		s)
		if [ -e search.bash ]
		then
			. ./search.bash
			echo "Enter directory and regular expression"
			read arg1 arg2
			search 3 $arg1 $arg2
		else
		echo -e "\033[31msearch.bash file is damaged function is not available\033[0m"
		fi
		;;
		r)
		if [ -e reverse.bash ]
		then 
			. ./reverse.bash
			echo "Enter first and second file name"
			read arg1 arg2
			reverse  3 $arg1 $arg2	
		else
		echo -e "\033[31mreverse.bash file is damaged function is not available\033[0m"
		fi
		;;
		l)
		if [ -e log.bash ]
		then 
			. ./log.bash
			log 1
		else
		echo -e "\033[31mlog.bash file is damaged function is not available\033[0m"
		fi
		;;
		str)
			echo "Enter a phrase"
			read arg1
			echo ${#arg1}
		;;
		e)
		if [ -e exit.bash ]
		then
			echo "Exit code:"
			read arg1
			. ./exit.bash
			eXXit "i"  $arg1
		else
		echo -e "\033[31mexit.bash file is damaged function is not available\033[0m"
		fi
		;;
		h)
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
