array=(-1 0 1 2 -3)
for ((i=0;i<$((${#array[@]}-2));i++))
do
	second=$((i+1))
	third=$((i+2))
	if (( $((${array[i]}+${array[second]}+${array[third]}))==0 ))
	then
		echo ${array[i]} ${array[second]} ${array[third]} sum is : 0
	fi

done

