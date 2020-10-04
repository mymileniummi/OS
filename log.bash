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
                  inf="\\(II\\)"
                  war="\\(WW\\)"
grep -E -h $war /var/log/anaconda/X.log | sed -E "s/$war/Warning: /"| sed -rn '/Warning:/s//\x1b[33m&\x1b[0m/p'
grep -E -h $inf /var/log/anaconda/X.log | sed -E "s/$inf/Information: /" |sed -rn '/Information:/s//\x1b[36m&\x1b[0m/p'
            fi      
      fi
}
