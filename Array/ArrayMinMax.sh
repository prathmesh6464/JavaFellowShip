#!/bin/bash -x
declare -a array
for ((i=0;i<10;i++))
do
	array[i]=$((RANDOM%900+100))
done
echo ${array[@]}
previousMinValue=0
previousMaxValue=0
for ((i=0;i<10;i++))
do
	index=$((i+1))
	if (($i==0))
	then
		minValue=$((array[0]))
	fi
	previousMinValue=$minValue
	if (($minValue>$((array[index]))))
	then
		minValue=${array[index]}
	fi
done
for ((i=0;i<10;i++))
do
	index=$((i+1))
	if (($i==0))
	then
		maxValue=$((array[0]))
	fi
	previousMaxValue=$maxValue
	if (($maxValue<$((array[index]))))
	then
		previousMaxValue=$maxValue
		maxValue=${array[index]}
	fi
done

echo minimum Value : $previousMinValue
echo maximum Value : $previousMaxValue

index=1
minValue=${array[0]}
maxValue=${array[0]}
while(($index<$((${#array[@]}))))
do
	if(($maxValue<${array[index]} && $previousMaxValue!=${array[index]}))
	then
		maxValue=${array[index]}
	fi
	if(($minValue>${array[index]} && $previousMinValue!=${array[index]}))
	then
		minValue=${array[index]}
	fi
	((index++))
done
echo "Second Min Value : "$minValue
echo "Second Max Value : "$maxValue 
