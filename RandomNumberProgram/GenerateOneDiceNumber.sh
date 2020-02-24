#!/bin/bash -x
randomValue=$((RANDOM%6))
randomValue=$(($randomValue+1))


#DISPLAY RANDOM VALUE
echo Random Value Of Dice : $randomValue
