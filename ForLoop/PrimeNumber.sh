read -p "Enter A Number " number
temp=0
for ((i=2;i<$number/2;i++))
do
	if [[ $(($number%$i)) -eq 0 ]]
	then
		((temp++))
	fi
done
	if [[ $temp == 0 && $number!=1 ]]
	then
		echo "$number is  Prime"
	else
		echo "$number is not prime"
	fi
