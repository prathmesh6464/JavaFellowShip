#!/bin/bash -x
value1=$((RANDOM%99))
value2=$((RANDOM%99))
value3=$((RANDOM%99))
value4=$((RANDOM%99))
value5=$((RANDOM%99))
if [[ "${#value1}" == 2 && "${#value2}" == 2 && "${#value3}" == 2 && "${#value4}" == 2 && "${#value5}" == 2 ]]
then 
	echo "sum  of " $value1 , $value2 , $value3 , $value4 , $value5 "is : " $(($value1+$value2+$value3+$value4+$value5))
	echo "average of " $value1 , $value2 , $value3 , $value4 , $value5 "is : " $(($(($value1+$value2+$value3+$value4+$value5))/5))
else
	echo "2 No digit has not been generated please run again"

fi
