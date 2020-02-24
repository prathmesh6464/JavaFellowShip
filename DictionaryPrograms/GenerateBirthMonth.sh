#!/bin/bash -x
#CONSTANT VARIABLE
INDIVIDUALS_NUMBER=50
NUMBER_OF_MONTH=12

#VARIABLE
declare -A birthDateArray


#LOGIC TO GENERATE 50 INDIVIDULAS BIRTHDATE
for((iter=1;iter<=INDIVIDUALS_NUMBER;iter++))
do
	randomBirthMonth=$((RANDOM%12+1))
	birthDateArray[$randomBirthMonth]=$(("${birthDateArray[$randomBirthMonth]}"+1))
done


#PRINTING BIRTHDATE AND NO OF PEOPLE BIRTHDAY
for((iter=1;iter<=NUMBER_OF_MONTH;iter++))
do
	echo "$iter Month have ${birthDateArray[$iter]} Birthdays"
done
