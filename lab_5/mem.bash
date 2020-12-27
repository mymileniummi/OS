#!/bin/bash
echo "" > report.log
arr=()
step=0
while :
do
arr+=(11 12 13 14 15 16 17 18 19 20)
step=$(($step+1))
ans=$(($step%1000))
[ $ans -eq 0 ] && echo "$step" >> report.log
done
