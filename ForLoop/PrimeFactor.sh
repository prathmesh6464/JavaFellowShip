#!/bin/bash -x


#LOGIC OF PRIME FACTOR
read -p "Enter Number To Compute Prime Factor : " number
for ((iter=2;iter<=$((number));iter++))
do
	flag=0
	for ((iter2=2;iter2<=$((iter/2));iter2++))
	do
		if (($((iter%iter2)) == 0 ))
		then
			flag=1
		fi
	done
	if (( $flag==0 ))
	then
		 if (( $((number%iter))==0 ))
       		 then
			echo $iter
			number=$((number/iter))
			iter=$((iter-1))
		fi
	fi
done


