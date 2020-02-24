#!/bin/bash -x
#CONSTANT VARIABLE
SIZE_OF_ARRAY=10


#VARIABLE
declare -a arrayOfRandomNumber


#TAKING INPUT IN ARRAY
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	arrayOfRandomNumber[iter]=$((RANDOM%900+100))
done


# LOGIC OF SORTING ARRAY
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	for((iter2=iter+1;iter2<SIZE_OF_ARRAY;iter2++))
	do
		if((${arrayOfRandomNumber[iter]} > ${arrayOfRandomNumber[iter2]}))
		then
			temp=${arrayOfRandomNumber[iter]}
			arrayOfRandomNumber[iter]=${arrayOfRandomNumber[iter2]}
			arrayOfRandomNumber[iter2]=$temp
		fi
	done
done


#DISPLAY ARRAY AND SECOND MINIMUM AND MAXIMUM VALUE
echo "Array : " ${arrayOfRandomNumber[@]}
echo "Second Minimum Value : " ${arrayOfRandomNumber[1]}
echo "Second Minimum Value : " ${arrayOfRandomNumber[8]}


