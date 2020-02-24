#!/bin/bash -x
#CONSTANT VARIABLE
SIZE_OF_ARRAY=10


#VARIABLE
declare -a arrayOfNumber
index=1


#TAKING INPUT IN ARRAY OF NUMBER
for ((iter=0;iter<SIZE_OF_ARRAY;iter++))
do
	arrayOfNumber[iter]=$((RANDOM%900+100))
done


#DISPLAY ARRAY OF NUMBER
echo ${arrayOfNumber[@]}


#VARIABLE
minValue=${arrayOfNumber[0]}
maxValue=${arrayOfNumber[0]}


#LOGIC TO FIND MIN AND MAX VALUE
while (($index<$((${#arrayOfNumber[@]}))))
do
	if(($maxValue<$((${arrayOfNumber[index]}))))
	then
		maxValue=$((${arrayOfNumber[index]}))
	fi
	if(($minValue>$((${arrayOfNumber[index]}))))
	then
		minValue=${arrayOfNumber[index]}
	fi
	((index++))
done


#DISPLAY MIN VALUE AND MAX VALUE
echo "Minimum Value : " $minValue
echo "Maximum Value : " $maxValue


#VARIABLE
index=1
secondMinValue=${arrayOfNumber[0]}
secondMaxValue=${arrayOfNumber[0]}


#LOGIC TO FIND SECOND MIN AND MAX VALUE
while (($index<$((${#arrayOfNumber[@]}))))
do
	if(($secondMaxValue<${arrayOfNumber[index]} && $maxValue!=$((${arrayOfNumber[index]}))))
	then
		secondMaxValue=${arrayOfNumber[index]}
	fi
	if(($secondMinValue>${arrayOfNumber[index]} && $minValue!=$((${arrayOfNumber[index]}))))
	then
		secondMinValue=${arrayOfNumber[index]}
	fi
	((index++))
done


#DISPLAY SECOND MIN AND MAX VALUE
echo "Second Min Value : " $secondMinValue
echo "Second Max Value : " $secondMaxValue 
