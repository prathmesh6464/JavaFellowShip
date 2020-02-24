#!/bin/bash -x
#VARIABLE
randomNum1=$((RANDOM%900+100))
randomNum2=$((RANDOM%900+100))
randomNum3=$((RANDOM%900+100))
randomNum4=$((RANDOM%900+100))
randomNum5=$((RANDOM%900+100))


#FINDING MINIMUM VALUE
minValue=$randomNum1
maxValue=$randomNum1
if [ $randomNum2 -lt $minValue ]
then 
	minValue=$randomNum2
elif [ $randomNum3 -lt $minValue ]
then
	minValue=$randomNum3
elif [ $randomNum4 -lt $minValue ]
then 
	minValue=$randNum4
elif [ $randomNum5 -lt $minValue ]
then
	minValue=$randomNum5
fi


#DISPLAY MINIMUM VALUE
echo $minValue


#FINDIN MAXIMUM VALUE
if [ $randomNum2 -gt $maxValue ]
then
	maxValue=$randomNum2
elif [ $randomNum3 -gt $maxValue ]
then
	maxValue=$randomNum3
elif [ $randomNum4 -gt $maxValue ]
then
	maxValue=$randomNum4
elif [ $randomNum5 -gt $maxValue ]
then
	maxValue=$randomNum5
fi


#DISPLAY MAXIMUM VALUE
echo $maxValue




