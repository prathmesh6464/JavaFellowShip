#!/bin/bash -x
index=0
declare -a array
for (( i=0; i<=100 ; i++))
do
	if (($(($i%11))==0 && $i!=0))
	then
		array[index]=$i
		((index++))
	fi
done
echo ${array[@]}
