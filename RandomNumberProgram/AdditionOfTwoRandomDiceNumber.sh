#!/bin/bash -x
randomValue1=$((RANDOM%6))
randomValue2=$((RANDOM%6))
randomValue1=$(( $randomValue1+ 1 ))
randomValue2=$(( $randomValue2 + 1 ))
echo $randomValue1 "+" $randomValue2 ":" $(($randomValue1+$randomValue2))
