#!/bin/bash
function  search {
	if [ $# -lt 1 ]
	then 
	 echo "Not enough arguments"
 	elif [ -d $1 ]
        then 
	   for file in $1/*
	   do 
	      if  [ -f "$file" ]
              then 
	          echo "$file is  a file"
	      fi
	   done
	else 
	   echo "Directory doesn't exist"
	fi
}
