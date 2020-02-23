#!/bin/bash -x


#VARIABLE
temp=0
declare -a array


#LOGIC OF PRIME FACTOR
read -p "Enter Number To Compute Prime Factor : " number
for ((iter=1;iter<=$((number));iter++))
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
		 if (( $((number%iter))==0 && iter!=1 ))
       		 then
			((temp++))
			array[temp]=$iter
			number=$((number/iter))
			iter=$((iter-1))
		fi
	fi
done


#DISPLAYING ARRAY
echo "Array Of Prime Factor : " ${array[@]}
