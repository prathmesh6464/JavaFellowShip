#!/bin/bash -x
#VARIABLE
randomValue1=$((RANDOM%90+10))
randomValue2=$((RANDOM%90+10))
randomValue3=$((RANDOM%90+10))
randomValue4=$((RANDOM%90+10))
randomValue5=$((RANDOM%90+10))


#SUM AND AVERAGE OF RANDOM VARIABLE
echo "sum  of "  $randomValue1 , $randomValue2 , $randomValue3 , $randomValue4 , $randomValue5 "is : " $(($randomValue1+$randomValue2+$randomValue3+$randomValue4+$randomValue5))
echo "average of "  $randomValue1 , $randomValue2 , $randomValue3 , $randomValue4 , $randomValue5 "is : " $(($(($randomValue1+$randomValue2+$randomValue3+$randomValue4+$randomValue5))/5))

