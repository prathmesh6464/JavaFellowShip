powerLimit=$1
power=0
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
