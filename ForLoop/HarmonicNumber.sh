number=$1
result=0
for ((i=1;i<=$number;i++))
do
	result=`echo "1/$i+$result" | bc -l`

done
echo $result
