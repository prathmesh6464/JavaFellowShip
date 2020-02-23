#!/bin/bash -x
read -p "Enter Year To Check Wheather It Is Leap Or Not : " year
echo "${#year}"
if [[ "${#year}" -eq 4 ]];
then
	if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
	then
		echo $year is Leap Year
	else
		echo $year is Not Leap Year
	fi
else
 	echo $year please Enter 4 digit number
fi
