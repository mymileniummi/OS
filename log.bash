#!/bin/bash
function log {
      . ./arg_count_check.bash
      arg_count $1 1
      if [ $? -eq 0 ]
      then  
     inf="\\(II\\)"
     war="\\(WW\\)"
grep -E -h $war /var/log/anaconda/X.log | sed -E "s/$war/Warning: /"| sed -rn '/Warning:/s//\x1b[33m&\x1b[0m/p'
grep -E -h $inf /var/log/anaconda/X.log | sed -E "s/$inf/Information: /" |sed -rn '/Information:/s//\x1b[36m&\x1b[0m/p'
fi
}
