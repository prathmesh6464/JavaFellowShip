#!/bin/bash -x


#VARIBALE
array=(-1 0 1 2 -3)


#LOGIC TO COMPUTE SUM OF 3 NUMBERS EQUALS TO ZERO
for ((iter=0;iter<$((${#array[@]}-2));iter++))
do
	second=$((iter+1))
	third=$((iter+2))
	if (( $((${array[iter]}+${array[second]}+${array[third]}))==0 ))
	then
		echo ${array[iter]} ${array[second]} ${array[third]} "Sum Is : " 0
	fi
done

