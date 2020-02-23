#!/bin/bash -x
#PRIME NUMBER IN GIVEN RANGE
read -p "Input The Number : " number
for((iter=1;iter<=$number;iter++))
do
	flag=0
	for((iter2=2;iter2 <= $((iter/2));iter2++))
	do
		if(($((iter%iter2))==0))
		then
			flag=1
		fi
	done
	if(($flag==0 && $iter!=1))
	then
		echo $iter is Prime Number
	else
		echo $iter is Not Prime Number
	fi
done
