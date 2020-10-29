#!/bin/bash
function arg_count {
  if [ $1 -lt $2 ]
  then
    echo -e "\033[31mNot enough arguments \033[0m"
     return 1
  elif [ $1 -gt $2 ]
  then
     echo -e "\033[31mToo many arguments\033[0m"
     return 1
  else
   return 0
   fi
}
