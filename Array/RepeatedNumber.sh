#!/bin/bash -x


#VARIABLE
index=0
declare -a array


#LOGIC OF REPEATED NUMBER
for (( iter=0; iter<=100 ; iter++))
do
	if (($(($iter%11))==0 && $iter!=0))
	then
		array[index]=$iter
		((index++))
	fi
done


#DISPLAY ARRAY
echo "Repeated Numbers Between 1 to 100 : " ${array[@]}
