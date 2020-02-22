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

minValue=${array[0]}
maxValue=${array[0]}
for ((i=0;i<10;i++))
do
	if (( ${array[i]} != $previouMinValue ))
	then
		if (($minValue>${array[i]}))
		then
			minValue=${array[i]}
		fi
	fi
done
echo Second Minimum Value $minValue
for ((i=0;i<10;i++))
do
	if $((${array[i]}!=$previousMaxValue))
	then
		if (($maxValue<${array[i]} ))
		then
			maxValue=${array[i]} ))
		fi
	fi
done
echo Second Maximum Value $maxValue

