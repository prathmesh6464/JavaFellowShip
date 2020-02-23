#!/bin/bash -x

#COMMAND LINE ARGUMENT	
number=$1
result=0
for ((iter=1;iter<=$number;iter++))
do
	result=`echo "1/$iter" | bc -l`
	result=$(($result+$result))

done


#DISPLAY HARMONIC NUMBER
echo $result
