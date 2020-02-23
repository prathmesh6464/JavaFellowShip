#!/bin/bash -x
randVal=$((RANDOM%6))
randVal=$(($randVal+1))
echo Random Value Of Dice : $randVal
