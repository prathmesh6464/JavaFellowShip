#!/bin/bash -x


#COMMAND LINE ARGUMENT
rangeOfPower=$1
for ((iter=0;iter<=rangeOfPower;iter++))
do
	echo "2^$iter" | bc 
done
