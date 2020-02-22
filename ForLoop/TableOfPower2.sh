rangeOfPower=$1
for ((i=0;i<=rangeOfPower;i++))
do
	echo "2^$i" | bc
done
