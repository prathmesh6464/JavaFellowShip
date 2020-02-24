#!/bin/bash -x
#COMMAND LINE ARGUMENT
powerLimit=$1


#VARIABLE
power=0


#LOGIC OF FINDING POWER
while ((power<=powerLimit))
do
	val=`echo "2^$power" | bc`
	echo $val
	if  (($val >=256))
	then
		echo "We Can Print Value Till 256 Only"
		break
	fi
	power=$(($power+1))
done
