#!/bin/bash
echo "" > report2.log
arr=()
step=0
while :
do
arr+=(11 12 13 14 15 16 17 18 19 20 1 2 3 4 5 6 7 8 9 10)
step=$(($step+1))
ans=$(($step%100000))
[ $ans -eq 0 ] && echo "$step" >> report2.log
done
