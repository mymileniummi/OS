#!/bin/bash
case $1 in
	calc)
	    . ./calc.bash
	    calc $# $2 $3 $4
	;;
	search)
	     . ./search.bash
	     search $# $2 $3
	;;
	reverse)
             . ./reverse.bash
	     reverse $# $2 $3
	;;
	strlen)
	     . ./strlen.bash
	     strlen $# $2
	;;
	log)
	     . ./log.bash
	     log
	;;
	exit)
	     . ./exit.bash
	     eXXit $2
	;;
	help)
	     . ./help.bash
             help
	;;
	interactive)
	  . ./interactive.bash
	  menu
	;;
	*)
	echo -e "\033[31m Unknoun command\033[0m"
	;;
esac
