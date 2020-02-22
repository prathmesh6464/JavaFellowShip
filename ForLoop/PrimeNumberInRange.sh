read -p "Input The Number : " number
for (( i=1;i<=$number;i++ ))
do
	flag=0
	for (( j=2;j <= $((i/2));j++ ))
	do
		if (( $((i%j)) == 0 ))
		then
			flag=1
		fi
	done
	if (( $flag==0 && $i!=1 ))
	then
		echo $i is Prime Number
	else
		echo $i is Not Prime Number
	fi
done
