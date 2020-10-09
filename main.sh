#!/bin/bash
if  [ ! -e arg_count_check.bash ]
then
echo -e "\033[31marg_count_check.bash file is damaged application is not available\033[0m"
exit 12
fi
case $1 in
	calc)
	if [ -e calc.bash ]
	then 
	    . ./calc.bash
	    calc $# $2 $3 $4
	else
		echo -e "\033[31mcalc.bash file is damaged function is not available\033[0m"
		exit 5
	fi
	;;
	search)
	if [ -e search.bash ]
	then
	     . ./search.bash
	     search $# $2 $3
	else
		echo -e "\033[31msearch.bash file is damaged function is not available\033[0m"
		exit 6
	fi
	;;
	reverse)
	if [ -e reverse.bash ]
	then
             . ./reverse.bash
	     reverse $# $2 $3
	else
		echo -e "\033[31mreverse.bash file is damaged function is not available\033[0m"
		exit 7
	fi
	;;
	strlen)
	     . ./arg_count_check.bash
	     arg_count $# 2
	     if [ $? -eq 0 ]
	     then
		echo ${#2}
	     fi
	;;
	log)
	if [ -e log.bash ]
	then
             . ./arg_count_check.bash
	     arg_count $# 1
	     if [ $? -eq 0 ]
	     then
             . ./log.bash
	     log $#
	     fi
	else
		echo -e "\033[31mlog.bash file is damaged function is not available\033[0m"
		exit 8
	fi
	;;
	exit)
	if [ -e exit.bash ]
	then 
	     . ./exit.bash
	     eXXit $1 $2
	else
		echo -e "\033[31mexit.bash file is damaged function is not available\033[0m"
		exit 9
	fi
	;;
	help)
	if [ -e help.bash ]
	then
	     . ./help.bash
             help
	else
		echo -e "\033[31mhelp.bash file is damaged function is not available\033[0m"
		exit 10
	fi
	;;
	interactive)
	if [ -e interactive.bash ]
	then
	  . ./interactive.bash
	  menu
	 else
		echo -e "\033[31minteractive.bash file is damaged function is not available\033[0m"
		exit 10
	fi
	;;
	*)
		echo -e "\033[31m Unknoun command\033[0m"
		. ./help.bash
		help
	;;
esac
