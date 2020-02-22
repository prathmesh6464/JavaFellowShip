#!/bin/bash -x
prime()
{
	number=$1
	flag=0
	for (( i=2 ;i < $number ; i++))
	do
		if (($(($number%$i))==0))
		then
			flag=1
			break
		fi
	done
	if (($flag == 0 && $number!=1))
	then
		echo $number Is Prime Number
	else
		echo $number Is Not Prime Number
	fi
}
palindrome()
{
	number=$1
	num=$number
	rev=0
	while ((num!=0))
	do 
		digit=$((num%10))
		rev=$((rev*10))+$digit
		num=$((num/10))
	done
	if (($number==$rev))
	then
		echo "The $number is Palindrome"
		echo "Now We Will Check $number Is Prime Or Not"
		prime $number
	else
		echo The $number is Not Palindrome
	fi
}
read -p "Please Enter Number To Check Number Is Prime or Not : " number
prime  $number
read -p "Please Enter Number To Check Number Is Palindrome or Not and If palindrome then we will check is it prime or Not : " number2
palindrome $number2

