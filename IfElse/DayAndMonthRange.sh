day=$1;month=$2
if [[ $day -ge 20 && $day -le 31  && $month -eq 3 ]];
then
	echo true
elif [[ $day -ge 1 && $day -le 30 && $month -eq 4 ]];
then
	echo true
elif [[ $day -ge 1 && $day -le 31 && $month -eq 5 ]];
then	
	echo true
elif [[ $day -le 20 && $day -ge 1 && $month -eq 6 ]];
then 
	echo true
else
	echo false
fi
