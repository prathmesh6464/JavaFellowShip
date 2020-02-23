#!/bin/bash -x
read -p "Enter Number To Check Wheather It Is Palindrome Or Not : " number
palindrome()
{
	number=$1
	num=$number
	rev=0
	while((num!=0))
	do
		digit=$((num%10))
		rev=$((rev*10))+$digit
		num=$((num/10))
	done
	if (($number==$rev))
	then
		echo The $number is Palindrome
	else
		echo The $number is Not Palindrome
	fi
}
#PALINDROME FUNCTION CALLED
palindrome $number
