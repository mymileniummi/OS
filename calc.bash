#!/bin/bash
function calc {
	if [ $# -lt 3 ]
	then
		echo "Not enough argumnts"
	else
		case $1 in 
	 	 sum)
		  echo $(( $2+$3 ));;
		 sub)
		  echo $(( $2-$3 ));;
		 mul)
	 	  echo $(( $2*$3 ));;
		 div)
		  if [ $3 -eq 0 ]
		  then
	  	   echo "Divsion by zero!?"
		  else
	 	    echo $(( $2/$3))
		  fi
	  	;;
		esac
	fi
}
