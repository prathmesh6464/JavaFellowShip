
flip=$((RANDOM%2))
#echo $flip
if [ $flip==0 ]
then
	echo Tails
else
	echo Head
fi
