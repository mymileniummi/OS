#!/bin/bash
function strlen {
	. ./arg_count_check.bash
	arg_count $1 2
	if  [ $? -eq 0 ]
	then
		 echo  ${#2}
	fi
}
