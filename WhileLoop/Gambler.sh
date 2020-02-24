#!/bin/bash -x
read -p "Enter The Number : " number


#VARIABLE
number1=1
changeValue=101


#SEARCHING VARIABLE
while (($number1<=$changeValue))
do
	val=$((number1+changeValue))
	if (($((Val%2))==0))
	then
		mid=$(($((number1+changeValue))/2))
		if (($mid==$number))
		then
			echo $mid Found
			break
		fi
		if (($mid<$number))
		then
			number1=$mid
		else
			changeValue=$mid
		fi
	else
		mid=$(($((number1+changeValue+1))/2))
		if (($mid==$number))
		then
			echo $mid Found
			break
		fi
      if (($mid<$number))
      then
     		 number1=$mid
      else
          changeValue=$mid
      fi
	fi
done
