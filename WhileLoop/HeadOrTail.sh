tail=0
head=0
while (($tail!=11 && $head!=11))
do
	number=$((RANDOM%2))
	if (($number==1))
	then
		((tail++))
		if ((tail==11))
		then
			echo "Tail Won" $tail "Points"
		fi
	else
		((head++))
		if ((head==11))
		then
			echo "Head Won" $head "Points"
		fi
	fi
done

