#!/bin/bash -x
read -p "Enter The Number : " number


#VARIABLE
num=1
changeValue=101


#SEARCHING NUMBER
while (($num<=$changeValue))
do 	val=$((num+changeValue))
	if (($((Val%2))==0))
	then
		mid=$(($((num+changeValue))/2))
		if (($mid==$number))
		then
			echo $mid Found
			break
		fi
		if (($mid<$number))
		then
			num=$mid
		else
			changeValue=$mid
		fi
	else
		mid=$(($((num+changeValue+1))/2))
		if (($mid==$number))
		then
			echo $mid Found
			break
		fi
                if (($mid<$number))
                then
                        num=$mid
                else
                        changeValue=$mid
 	        fi
	fi
done
