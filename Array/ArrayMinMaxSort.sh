#!/bin/bash -x


#CONSTANT VARIABLE
SIZE_OF_ARRAY=10


#VARIABLE
declare -a array


#TAKING INPUT IN ARRAY
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	array[iter]=$((RANDOM%900+100))
done


# LOGIC OF SORTING ARRAY
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	for((iter2=iter+1;iter2<SIZE_OF_ARRAY;iter2++))
	do
		if((${array[iter]} > ${array[iter2]}))
		then
			temp=${array[iter]}
			array[iter]=${array[iter2]}
			array[iter2]=$temp
		fi
	done
done


#DISPLAY ARRAY AND SECOND MINIMUM AND MAXIMUM VALUE
echo "Array : " ${array[@]}
echo "Second Minimum Value : " ${array[1]}
echo "Second Minimum Value : " ${array[8]}


