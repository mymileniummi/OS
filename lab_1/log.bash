#!/bin/bash
function log {
      . ./arg_count_check.bash
      arg_count $1 1
      if [ $? -eq 0 ]
      then
            if [ ! -e /var/log/anaconda/X.log ]
            then echo -e "\03331mLog file doesn't exist\033[0m"
            elif [ ! -r /var/log/anaconda/X.log ]
            then echo -e "Not enough rights for reading log file\033[0m"
            else
            while read line;
	    do
	    if [[ "$line" == *"(WW)"* && "$line" != *"(WW) warning, (EE) error, (NI) not implemented, (??) unknown."* ]]
	    then
		 echo -e ${line//"(WW)"/"\e[33mWarning: \e[0m"}
            fi
	    done < "/var/log/anaconda/X.log"
	    while read line;
	    do
	    if [[ "$line" == *"(II)"* && "$line" != *"(++) from command line, (!!) notice, (II) informational,"* ]];
	    then 
		echo -e  ${line//"(II)"/"\e[36mInformation:\e[0m"}
	    fi
	    done < "/var/log/anaconda/X.log"
            fi
      fi
}
