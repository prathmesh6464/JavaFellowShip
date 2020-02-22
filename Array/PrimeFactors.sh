declare -a array
k=0
read -p "Enter Number To Compute Prime Factor : " number
for ((i=1;i<=$((number));i++))
do
	flag=0
	for ((j=2;j<=$((i/2));j++))
	do
		if (($((i%j)) == 0 ))
		then
			flag=1
		fi
	done
	if (( $flag==0 ))
	then
		 if (( $((number%i))==0 && i!=1 ))
       		 then
			((k++))
			temp=$((k))
			array[temp]=$i
			number=$((number/i))
			i=$((i-1))
		fi
	fi
done
echo ${array[@]}
