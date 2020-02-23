#!/bin/bash -x
read -p "Enter Number And Display unit" number
if (( ${#number} == 1 ));
then
	echo $number "in unit place";
elif (( ${#number} == 2 ));
then	
	number1=$(($number%10));
	echo $number1 "in unit place";
	number=$(($number/10));
	echo $number " in ten place";
elif (( ${#number} == 3 ));
then
	number1=$(($number%10));
	echo $number1 "in unit place";
	number=$(($number/10));
	number1=$(($number%10));
	echo $number1 "in Ten Place ";
	number=$(($number/10));
	echo $number "in Hundred Place";

elif (( ${#number}==4 ));
then
	number1=$(($number%10));
	echo  $number1 " in unit place";
	number=$(($number/10));
	number1=$(($number%10));
	echo $number1 "in ten place";
	number=$(($number/10));
        number1=$(($number%10));
        echo $number1 "in hundred place";
        number=$(($number/10));
	number1=$(($number%10));
        echo $number1 "in thousand place";
else
	echo "please Enter In Between Unit 1 To Unit 1000";
fi
