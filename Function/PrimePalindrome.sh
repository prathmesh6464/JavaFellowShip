#!/bin/bash -x
prime()
{
	number=$1
	flag=0
	for((iter=2;iter<$number;iter++))
	do
		if(($(($number%$iter))==0))
		then
			flag=1
			break
		fi
	done
	if(($flag==0 && $number!=1))
	then
		echo $number "Is Prime Number"
	else
		echo $number "Is Not Prime Number"
	fi
}


#PALINDROME NUMBER FUNCTION
palindrome()
{
	number=$1
	if((${#numebr}>1))
	then
		num=$number
		reverse=0
		while((num!=0))
		do 
			digit=$((num%10))
			reverse=$((rev*10))+$digit
			num=$((num/10))
		done
		if (($number==$rev))
		then
			echo $number "is Palindrome"
			echo "Now We Will Check $number Is Prime Or Not"
			#PRIME FUNCTION CALLED
			prime $number
		else
			echo $number "Is Not Palindrome"
		fi
	else
		echo $number "Is Palindrome"
	fi
}


#TAKING INPUT FOR PRIME NUMBER
read -p "Please Enter Number To Check Number Is Prime or Not : " number
#FUNCION CALLED
prime  $number


#TAKING INPUT FOR PALINDROME AND PRIME
read -p "Please Enter Number To Check Number Is Palindrome or Not and If palindrome then we will check is it prime or Not : " number2
#FUNCTION CALLED
palindrome $number2

