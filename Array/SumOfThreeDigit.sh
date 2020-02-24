#!/bin/bash -x
#VARIBALE
arrayOfNumber=(-1 0 1 2 -3)


#LOGIC TO COMPUTE SUM OF 3 NUMBERS EQUALS TO ZERO
for ((iter=0;iter<$((${#arrayOfNumber[@]}-2));iter++))
do
	second=$((iter+1))
	third=$((iter+2))
	if (( $((${arrayOfNumber[iter]}+${arrayOfNumber[second]}+${arrayOfNumber[third]}))==0 ))
	then
		echo ${arrayOfNumber[iter]} ${arrayOfNumber[second]} ${arrayOfNumber[third]} "Sum Is : " 0
	fi
done

