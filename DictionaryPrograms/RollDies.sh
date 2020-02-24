#!/bin/bash -x
#VARIABLE
declare -A rollDiesNumber


#CONSTANT VARIABLE
KEY_SIZE=6


#ASSIGNING VALUE ZERO TO ALL KEYS
for((iter=1;iter<=KEY_SIZE;iter++))
do
	rollDiesNumber[$iter]=0
done


#ASSIGNING RANDOM VALUES IN ROLL DIES NUMBER
while((1))
do
	randomIndex=$((RANDOM%6+1))
	echo "Result Of Die Roll : " $randomIndex
	rollDiesNumber[$randomIndex]=$(("${rollDiesNumber[$randomIndex]}"+1))
	echo "$randomIndex came : ${rollDiesNumber[$randomIndex]} Times" 
	if (("${rollDiesNumber[$randomIndex]}"==10))
	then
		echo $randomIndex "Is Reached 10 Times"
		echo $randomIndex "Reached Maximum 10 Times"
		break
	fi
done


#FINDING MINIMUM KEY AND VALUE
minValue=${rollDiesNumber[1]}
for((iter=2;iter<=KEY_SIZE;iter++))
do
	if(("$minValue>${rollDiesNumber[$iter]}"))
	then
		minValue="${rollDiesNumber[$iter]}"
	fi
done
for((iter=1;iter<=KEY_SIZE;iter++))
do
	if(("$minValue==${rollDiesNumber[$iter]}"))
	then
		echo "$iter Reached Minimum $minValue"
	fi
done


#DISPLAYING DICTIONARY
echo "keys Of Dictionary : " ${!rollDiesNumber[@]}
echo "Values Of Dictionary : " ${rollDiesNumber[@]}
