#!/bin/bash -x
#PRIME NUMBER LOGIC
read -p "Enter A Number " number
temp=0
for((iter=2;iter<$number/2;iter++))
do
	if(($(($number%$iter))==0))
	then
		((temp++))
		break
	fi
done
if(($temp==0 && $number!=1))
then
	echo "$number is  Prime"
else
	echo "$number is not prime"
fi
