#1/bin/bash -x
declare -a array
for ((i=0;i<10;i++))
do
	array[i]=$((RANDOM%900+100))
done

for ((i=0;i<10;i++))
do
	for((j=i+1;j<10;j++))
	do
		if((${array[i]} > ${array[j]}))
		then
			temp=${array[i]}
			array[i]=${array[j]}
			array[j]=$temp
		fi
	done
done
echo Array : ${array[@]}
echo Second Minimum Value : ${array[1]}
echo Second Minimum Value : ${array[8]}


