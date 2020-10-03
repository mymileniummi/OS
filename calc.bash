#!/bin/bash
function calc {
	. ./arg_count_check.bash
	arg_count $1 4
	if [ $? -eq 0 ]
	then
		if ( echo "$3" | grep -E -q "^[-+]?[0-9]+$");
		then
		   if ( echo "$4" | grep -E -q "^[-+]?[0-9]+$" );
			then
			case $2 in
	 		 sum)
			  echo $(( $3+$4 ));;
			 sub)
			  echo $(( $3-$4 ));;
			 mul)
	 		  echo $(( $3*$4 ));;
			 div)
			  if [ $4 -eq 0 ]
			  then
	  		        echo -e "\033[31mDivsion by zero!?\033[0m"
			  else
	 		        echo $(( $3/$4))
			  fi
	  		;;
			*)
				echo -e "\033[31mUnknown arithmetic operation\033[0m"
			;;
			esac
			else
				echo -e "\033[31mThird and Fourth argument must be INT\033[0m"
			fi
		else
 		  echo -e "\033[31mThird and Fourth argument must be INT\033[0m"
		fi

	fi
}
