#!/bin/bash -x


#FIND FACTORIAL NUMBER
read -p "Enter To Compute Factorial" number
factorial=1
for ((iter=$number;iter>=1;iter--))
do	
	factorial=$((factorial*iter))
done


#DISPLAY FACTORIAL
echo $factorial
