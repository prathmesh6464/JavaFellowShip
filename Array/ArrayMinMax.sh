#!/bin/bash -x


#CONSTANT VARIABLE
SIZE_OF_ARRAY=10


#VARIABLE
declare -a array
index=1


#TAKING INPUT IN ARRAY
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	array[iter]=$((RANDOM%900+100))
done


#DISPLAY ARRAY
echo ${array[@]}


#VARIABLE
minValue=${array[0]}
maxValue=${array[0]}


#LOGIC TO FIND MIN AND MAX VALUE
while (($index<$((${#array[@]}))))
do
	if(($maxValue<$((${array[index]}))))
	then
		maxValue=$((${array[index]}))
	fi
	if(($minValue>$((${array[index]}))))
	then
		minValue=${array[index]}
	fi
	((index++))
done


#DISPLAY MIN VALUE AND MAX VALUE
echo "Minimum Value : " $minValue
echo "Maximum Value : " $maxValue


#VARIABLE
index=1
secondMinValue=${array[0]}
secondMaxValue=${array[0]}


#LOGIC TO FIND SECOND MIN AND MAX VALUE
while (($index<$((${#array[@]}))))
do
	if(($secondMaxValue<${array[index]} && $maxValue!=$((${array[index]}))))
	then
		secondMaxValue=${array[index]}
	fi
	if(($secondMinValue>${array[index]} && $minValue!=$((${array[index]}))))
	then
		secondMinValue=${array[index]}
	fi
	((index++))
done


#DISPLAY SECOND MIN AND MAX VALUE
echo "Second Min Value : " $secondMinValue
echo "Second Max Value : " $secondMaxValue 
