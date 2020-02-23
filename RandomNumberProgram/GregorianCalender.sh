#!/bin/bash -x
day=$1;month=$2;year=$3
tempY=$(($year-(14-$month)/12))
tempX=$(($tempY+$tempY/4-$tempY/100+$tempY/400))
tempM=$(($month+12*((14-$month)/12)-2))
resultDay=$(( ($day+$tempX+31*$tempM/12)%7 ))

echo "Day In Number : " $resultDay

