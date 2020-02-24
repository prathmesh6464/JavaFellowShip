#!/bin/bash -x
randomValue=$((RANDOM%6))
randomValue=$(($randomValue+1))
echo Random Value Of Dice : $randomValue
